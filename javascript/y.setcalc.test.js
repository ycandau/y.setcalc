/* eslint no-global-assign: "off" */
/* eslint no-unused-vars: "off" */
/* global inlets, outlets, outlet, autowatch, post, error, max, arrayfromargs, messagename */
/* global Folder, Dict */

inlets = 1
outlets = 2
autowatch = 1

var dict = new Dict('setcalc')

function primeform_to_set (primeform, set) {
  set.length = 0
  for (var i = 0; i < primeform.length; i++) {
    set[i] =
      (primeform[i] >= '0') && (primeform[i] <= '9') ? Number(primeform[i])
      : primeform[i] === 'A' ? 10
      : primeform[i] === 'B' ? 11
      : -1
  }
}

function test_setcalc (type) {
  post('Testing setcalc for all ' + type + ' prime forms...\n')
  var pf_type = (type === 'Rahn') ? 'primeform_r' : 'primeform_f'
  var set = []
  dict
    .get('pitch_classes')
    .getkeys()
    .forEach(function (forte) {
      var primeform = dict.get('pitch_classes::' + forte + '::' + pf_type)
      primeform_to_set(primeform, set)
      outlet(1, dict.get('pitch_classes::' + forte + '::forte'))
      outlet(0, set)
    })
}

function array_is_equal (arr1, arr2) {
  if (arr1.length !== arr2.length) return false
  var test = true
  arr1.forEach(function (elem, ind) {
    if (elem !== arr2[ind]) test = false
  })
  return test
}

function test_setcalc_results () {
  var args = arrayfromargs(arguments)

  var forte_ext = args[0]
  var length = Number(re_forte.exec(forte_ext)[1])
  var ind = Number(re_forte.exec(forte_ext)[2])
  var icv_ext = args.slice(1, 7)
  var set_ext = args.slice(7, 7 + length)
  var forte_json = args[7 + length]
  var set_json = args.slice(8 + length, 8 + 2 * length)
  var icv_json = dict.get('pitch_classes::' + length + '-' + ind + '::icv')

  if (forte_ext !== forte_json) {
    post('    Inconsistent Forte number: ' +
      forte_ext + ' - ' + forte_json + ' - (' + set_ext.join(', ') + ')\n')
  }
  if (!array_is_equal(icv_ext, icv_json)) {
    post('    Invalid interval class vector: ' +
      forte_ext + ' - (' + icv_ext.join(', ') + ') - (' + icv_json.join(', ') + ')\n')
  }
  if (!array_is_equal(set_ext, set_json)) {
    post('    Invalid prime form: ' +
      forte_ext + ' - (' + set_ext.join(', ') + ') - (' + set_json.join(', ') + ')\n')
  }
}

var re_forte = /(\d+)-Z?(\d+)/

function sort_pitch_classes (pcs_l, pcs_r) {
  var left = re_forte.exec(pcs_l[0])
  var right = re_forte.exec(pcs_r[0])
  if (Number(left[1]) > Number(right[1])) return true
  else if (Number(left[1]) < Number(right[1])) return false
  else return (Number(left[2]) > Number(right[2]))
}

function sort_dict () {
  post('Sorting the dictionary of pitch set classes...\n')
  var pitch_classes = []
  dict
    .get('pitch_classes')
    .getkeys()
    .forEach(function (key) { pitch_classes.push([key, dict.get('pitch_classes::' + key)]) })

  dict.remove('pitch_classes')

  pitch_classes
    .sort(sort_pitch_classes)
    .forEach(function (pcs) {
      dict.replace('pitch_classes::' + pcs[0], pcs[1])
    })
}

function test_dict_duplicates () {
  var dict_tmp = new Dict()
  var forte
  dict
    .get('pitch_classes')
    .getkeys()
    .forEach(function (key) {
      forte = dict.get('pitch_classes::' + key + '::forte')
      if (dict_tmp.contains(forte)) {
        post('    Duplicate pitch class set: ' + forte + '\n')
      }
      dict_tmp.replace(forte, 1)
    })
}

function test_valid_primeform (primeform, length, type) {
  var err_mess = '    Invalid ' + type + ' primeform \'' + primeform + '\': '
  if (primeform.length !== length) {
    post(err_mess + 'invalid length\n')
  }

  if (length === 0) { return }
  var prev_pitch = Number(primeform[0])
  if (prev_pitch !== 0) {
    post(err_mess + 'expects \'0\' as first char instead of \'' + prev_pitch + '\'\n')
  }

  for (var i = 1; i < primeform.length; i++) {
    var ch = primeform[i]
    var pitch =
      (ch >= '0') && (ch <= '9') ? Number(ch)
      : ch === 'A' ? 10
      : ch === 'B' ? 11
      : -1
    if (pitch === -1) {
      post(err_mess + 'invalid char: \'' + ch + '\'\n')
      return false
    }
    if (pitch <= prev_pitch) {
      post(err_mess + 'invalid order: ' + prev_pitch + ' and ' + pitch + '\n')
      return false
    }
  }
  return true
}

function test_dict_values () {
  dict
    .get('pitch_classes')
    .getkeys()
    .forEach(function (key) {
      var pcs_dict = dict.get('pitch_classes::' + key)
      var forte = pcs_dict.get('forte')
      var key_res = re_forte.exec(key)
      var forte_res = re_forte.exec(forte)
      if ((key_res[1] !== forte_res[1]) || (key_res[2] !== forte_res[2])) {
        post('    Forte numbers do not match: \'' + key + '\' / \'' + forte + '\'\n')
      }

      var primeform_f = pcs_dict.get('primeform_f')
      var primeform_r = pcs_dict.get('primeform_r')
      if (primeform_f !== primeform_r) {
        post('    Differing Forte and Rahn primeforms: \'' +
          forte + '\' - \'' + primeform_f + '\' - \'' + primeform_r + '\'\n')
      }
      var length = Number(re_forte.exec(key)[1])
      test_valid_primeform(primeform_f, length, 'Forte')
      test_valid_primeform(primeform_r, length, 'Rahn')
    })
}

var pcs_counts = [1, 1, 6, 12, 29, 38, 50, 38, 29, 12, 6, 1, 1]

function test_dict_complete () {
  for (var length = 0; length <= 12; length++) {
    for (var forte = 1; forte <= pcs_counts[length]; forte++) {
      var forte_str = length + '-' + forte
      if (!dict.contains('pitch_classes::' + forte_str)) {
        post('    Missing pitch class set: ' + forte_str, '\n')
      }
    }
  }
}

function test_dict () {
  post('Testing the dictionary of pitch set classes...\n')
  test_dict_duplicates()
  test_dict_values()
  test_dict_complete()
}
