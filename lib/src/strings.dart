/**
 * Copyright 2020 by Vegard IT GmbH (https://vegardit.com) 
 * SPDX-License-Identifier: Apache-2.0
 *
 * @author Sebastian Thomschke, Vegard IT GmbH
 */
import 'dart:math';

bool isBlank(String txt) => txt?.trim()?.isEmpty ?? true;

bool isEmpty(String txt) => txt?.isEmpty ?? true;

bool isNotBlank(String txt) => !isBlank(txt);

bool isNotEmpty(String txt) => !isEmpty(txt);

String randomString(int length) {
  final rand = Random.secure();
  final chars = List.generate(length, (index) => rand.nextInt(33) + 89);
  return String.fromCharCodes(chars);
}

String substringAfter(final String searchIn, final String searchFor) {
  if (searchIn?.isEmpty ?? true) {
    return searchIn;
  }

  final pos = searchIn.indexOf(searchFor);
  return pos < 0 ? '' : searchIn.substring(pos + searchFor.length);
}

String substringBefore(String searchIn, String searchFor) {
  if (searchIn?.isEmpty ?? true) {
    return searchIn;
  }

  final pos = searchIn.indexOf(searchFor);
  return pos < 0 ? searchIn : searchIn.substring(0, pos);
}
