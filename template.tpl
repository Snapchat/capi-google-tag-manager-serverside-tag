___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Snap ConversionAPI ServerSide",
  "categories": [
    "CONVERSION",
    "ADVERTISING",
    "ANALYTICS"
  ],
  "brand": {
    "id": "github.com_Snapchat",
    "displayName": "Snapchat"
  },
  "description": "The server-side tag template to send event from your tagging server to Snap Conversion API.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "pixelId",
    "simpleValueType": true,
    "canBeEmptyString": false,
    "displayName": "Pixel ID"
  },
  {
    "type": "TEXT",
    "name": "apiAccessToken",
    "displayName": "API Access Token",
    "simpleValueType": true,
    "help": "To use the Conversions API, you need to use the access token for auth. See \u003ca href\u003d\"https://marketingapi.snapchat.com/docs/conversion.html#auth-requirements\"\u003ehere\u003c/a\u003e to generate the token.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "inheritEventName",
    "displayName": "Event Name Setup Method",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "inherit",
        "displayValue": "Inherit from client"
      },
      {
        "value": "override",
        "displayValue": "Override"
      }
    ],
    "simpleValueType": true,
    "subParams": [
      {
        "type": "RADIO",
        "name": "eventName",
        "displayName": "Event Type",
        "radioItems": [
          {
            "value": "standard",
            "displayValue": "Standard",
            "subParams": [
              {
                "type": "SELECT",
                "name": "eventNameStandard",
                "macrosInSelect": true,
                "selectItems": [
                  {
                    "value": "PAGE_VIEW",
                    "displayValue": "PAGE_VIEW"
                  },
                  {
                    "value": "ADD_CART",
                    "displayValue": "ADD_CART"
                  },
                  {
                    "value": "PURCHASE",
                    "displayValue": "PURCHASE"
                  },
                  {
                    "value": "SIGN_UP",
                    "displayValue": "SIGN_UP"
                  },
                  {
                    "value": "VIEW_CONTENT",
                    "displayValue": "VIEW_CONTENT"
                  },
                  {
                    "value": "SEARCH",
                    "displayValue": "SEARCH"
                  },
                  {
                    "value": "SAVE",
                    "displayValue": "SAVE"
                  },
                  {
                    "value": "START_CHECKOUT",
                    "displayValue": "START_CHECKOUT"
                  },
                  {
                    "value": "LOGIN",
                    "displayValue": "LOGIN"
                  },
                  {
                    "value": "LIST_VIEW",
                    "displayValue": "LIST_VIEW"
                  },
                  {
                    "value": "SUBSCRIBE",
                    "displayValue": "SUBSCRIBE"
                  },
                  {
                    "value": "ADD_BILLING",
                    "displayValue": "ADD_BILLING"
                  },
                  {
                    "value": "ADD_TO_WISHLIST",
                    "displayValue": "ADD_TO_WISHLIST"
                  },
                  {
                    "value": "ACHIEVEMENT_UNLOCKED",
                    "displayValue": "ACHIEVEMENT_UNLOCKED"
                  },
                  {
                    "value": "START_TRIAL",
                    "displayValue": "START_TRIAL"
                  },
                  {
                    "value": "RATE",
                    "displayValue": "RATE"
                  },
                  {
                    "value": "INVITE",
                    "displayValue": "INVITE"
                  },
                  {
                    "value": "COMPLETE_TUTORIAL",
                    "displayValue": "COMPLETE_TUTORIAL"
                  },
                  {
                    "value": "AD_CLICK",
                    "displayValue": "AD_CLICK"
                  },
                  {
                    "value": "AD_VIEW",
                    "displayValue": "AD_VIEW"
                  },
                  {
                    "value": "SHARE",
                    "displayValue": "SHARE"
                  },
                  {
                    "value": "RESERVE",
                    "displayValue": "RESERVE"
                  },
                  {
                    "value": "LEVEL_COMPLETE",
                    "displayValue": "LEVEL_COMPLETE"
                  },
                  {
                    "value": "CUSTOM_EVENT_1",
                    "displayValue": "CUSTOM_EVENT_1"
                  },
                  {
                    "value": "CUSTOM_EVENT_2",
                    "displayValue": "CUSTOM_EVENT_2"
                  },
                  {
                    "value": "CUSTOM_EVENT_3",
                    "displayValue": "CUSTOM_EVENT_3"
                  },
                  {
                    "value": "CUSTOM_EVENT_4",
                    "displayValue": "CUSTOM_EVENT_4"
                  },
                  {
                    "value": "CUSTOM_EVENT_5",
                    "displayValue": "CUSTOM_EVENT_5"
                  },
                  {
                    "value": "SPENT_CREDITS",
                    "displayValue": "SPENT_CREDITS"
                  },
                  {
                    "value": "APP_INSTALL",
                    "displayValue": "APP_INSTALL"
                  },
                  {
                    "value": "APP_OPEN",
                    "displayValue": "APP_OPEN"
                  }
                ],
                "simpleValueType": true
              }
            ]
          },
          {
            "value": "custom",
            "displayValue": "Custom",
            "subParams": [
              {
                "type": "TEXT",
                "name": "eventNameCustom",
                "simpleValueType": true
              }
            ]
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "inheritEventName",
            "paramValue": "override",
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "customEventData",
    "displayName": "Custom Events",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Param Name",
        "name": "name",
        "type": "SELECT",
        "selectItems": [
          {
            "value": "price",
            "displayValue": "event_data.price"
          },
          {
            "value": "item_ids",
            "displayValue": "event_data.item_ids"
          },
          {
            "value": "item_category",
            "displayValue": "event_data.item_category"
          },
          {
            "value": "currency",
            "displayValue": "event_data.currency"
          },
          {
            "value": "description",
            "displayValue": "event_data.description"
          },
          {
            "value": "level",
            "displayValue": "event_data.level"
          },
          {
            "value": "search_string",
            "displayValue": "event_data.search_string"
          },
          {
            "value": "number_items",
            "displayValue": "event_data.number_items"
          },
          {
            "value": "payment_info_available",
            "displayValue": "event_data.payment_info_available"
          },
          {
            "value": "sign_up_method",
            "displayValue": "event_data.sign_up_method"
          },
          {
            "value": "success",
            "displayValue": "event_data.success"
          },
          {
            "value": "transaction_id",
            "displayValue": "event_data.transaction_id"
          },
          {
            "value": "hashed_email",
            "displayValue": "user_id.hashed_email"
          },
          {
            "value": "hashed_phone_number",
            "displayValue": "user_id.hashed_phone_number"
          },
          {
            "value": "hashed_mobile_ad_id",
            "displayValue": "user_id.hashed_mobile_ad_id"
          },
          {
            "value": "device_model",
            "displayValue": "device.device_model"
          },
          {
            "value": "os_type",
            "displayValue": "device.os_type"
          },
          {
            "value": "os_version",
            "displayValue": "device.os_version"
          },
          {
            "value": "locale",
            "displayValue": "device.locale_language"
          },
          {
            "value": "country",
            "displayValue": "location.geo_country"
          },
          {
            "value": "region",
            "displayValue": "location.geo_region"
          },
          {
            "value": "client_dedup_id",
            "displayValue": "client_dedup_id"
          },
          {
            "value": "limit_ad_tracking",
            "displayValue": "device.limit_ad_tracking"
          },
          {
            "value": "brands",
            "displayValue": "brands"
          },
          {
            "value": "event_set_id",
            "displayValue": "event_set_id"
          },
          {
            "value": "page_domain",
            "displayValue": "page_domain"
          },
          {
            "value": "click_id",
            "displayValue": "click_id"
          },
          {
            "value": "uuid_c1",
            "displayValue": "uuid_c1"
          }
        ]
      },
      {
        "defaultValue": "",
        "displayName": "Param Value",
        "name": "value",
        "type": "TEXT"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

const getAllEventData = require('getAllEventData');
const getType = require('getType');
const getEventData = require('getEventData');
const JSON = require('JSON');
const sendHttpRequest = require('sendHttpRequest');
const getTimestampMillis = require('getTimestampMillis');
const setCookie = require('setCookie');
const getCookieValues = require('getCookieValues');
const getContainerVersion = require('getContainerVersion');
const logToConsole = require('logToConsole');
const sha256Sync = require('sha256Sync');
const generateRandom = require('generateRandom');


function createUUID() {
  let len = 36;
  let chars = '0123456789abcdef'.split('');
  let uuid = "";
  
  for (var i = 0; i < len; i++) {
    if (i == 8 || i == 13 || i == 18 || i == 23) {
      uuid += '-';
    } else if (i == 14) {
      uuid += '4';
    } else {
      uuid += chars[generateRandom(0, chars.length-1)];
    }
  }
  return uuid;
}

const eventData = getAllEventData();

const postUrl = 'https://tr.snapchat.com/v2/conversion';

function getCookie1() {
  const existingCookie1 = getCookieValues('_scid')[0];
  if (existingCookie1) {
    return existingCookie1;
  }
  const newCookie1 = createUUID();
  setCookie('_scid', newCookie1, {
    domain: 'auto',
    path: '/',
    samesite: 'Lax',
    secure: true,
    'max-age': 63072000, // 2 years
    httpOnly: false
  });
  return newCookie1;
}

let postBody = mapEvent(eventData, data);
sendHttpRequest(postUrl, (statusCode, headers, body) => {
  if (statusCode >= 200 && statusCode < 400) {
    data.gtmOnSuccess();
  } else {
    data.gtmOnFailure();
  }
}, {
  headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ' + data.apiAccessToken
  },
  method: 'POST'
}, JSON.stringify(postBody));

function getEventName(data) {
    if (data.inheritEventName === 'inherit') {
        let eventName = eventData.event_name;
        let gaToSnapEventName = {
            'page_view': 'PAGE_VIEW',
            'add_to_cart': 'ADD_CART',
            'sign_up': 'SIGN_UP',
            'purchase': 'PURCHASE',
            'view_item': 'VIEW_CONTENT',
            'add_to_wishlist': 'ADD_TO_WISHLIST',
            'begin_checkout': 'START_CHECKOUT',
            'add_payment_info': 'ADD_BILLING',
            'view_item_list': 'LIST_VIEW',
            'tutorial_complete': 'COMPLETE_TUTORIAL',
            'search': 'SEARCH',
            'generate_lead': 'SIGN_UP',
            'gtm4wp.addProductToCartEEC': 'ADD_CART',
            'gtm4wp.productClickEEC': 'VIEW_CONTENT',
            'gtm4wp.orderCompletedEEC': 'PURCHASE'
        };
        if (!gaToSnapEventName[eventName]) {
            return eventName;
        }
        return gaToSnapEventName[eventName];
    }
    return data.eventName === 'standard' ? data.eventNameStandard : data.eventNameCustom;
}

function sha256HashIfNotHashed(input){
  if (input == 'undefined' || input == null) {
    return null;
  }
  const type = getType(input);
  if(type == 'undefined' || type == null) {
    return null;
  }
  if(isAlreadyHashed(input)) {
    return input;
  }
  return sha256Sync(input.trim().toLowerCase(), {outputEncoding: 'hex'});
}

function isAlreadyHashed(input){
  return input && (input.match('^[A-Fa-f0-9]{64}$') != null);
}

function mapEvent(eventData, data) {
    let mappedData = {
        pixel_id: data.pixelId,
        event_type: getEventName(data),
        event_conversion_type: "WEB",
        page_url: eventData.page_location,
        timestamp: eventData.event_time ? eventData.event_time * 1000 : getTimestampMillis(),
        hashed_ip_address: sha256HashIfNotHashed(eventData.ip_override),
        user_agent: eventData.user_agent,
        uuid_c1: getCookie1(),
        integration: "gtmss",
    };

    mappedData = addServerEventData(eventData, data, mappedData);
    mappedData = addUserData(eventData, mappedData);
    mappedData = overrideDataIfNeeded(data, mappedData);
    mappedData = cleanupData(mappedData);

    return mappedData;
}

function addServerEventData(eventData, data, mappedData) {
    let serverEventDataList = {};

    if (eventData.event_tag) {
      mappedData.event_tag = eventData.event_tag;
    }
    if (eventData.item_category) {
      mappedData.item_category = eventData.item_category;
    }
    if (eventData.item_ids) {
      mappedData.item_ids = eventData.item_ids;
    }
    if (eventData.description) {
      mappedData.description = eventData.description;
    }
    if (eventData.number_items) {
      mappedData.number_items = eventData.number_items;
    }
    if (eventData.price) {
      mappedData.price = eventData.price;
    }
    if (eventData.currency) {
      mappedData.currency = eventData.currency;
    }
    if (eventData.transaction_id) {
      mappedData.transaction_id = eventData.transaction_id;
    }
    if (eventData.level) {
      mappedData.level = eventData.level;
    }
    if (eventData.client_dedup_id) {
      mappedData.client_dedup_id = eventData.client_dedup_id;
    }
    if (eventData.data_use) {
      mappedData.data_use = eventData.data_use;
    }
    if (eventData.search_string) {
      mappedData.search_string = eventData.search_string;
    }
    if (eventData.sign_up_method) {
      mappedData.sign_up_method = eventData.sign_up_method;
    }


    if (data.serverEventDataList) {
        data.serverEventDataList.forEach(d => {
            serverEventDataList[d.name] = d.value;
        });
    }

    if (serverEventDataList) {
        if (serverEventDataList.action_source) mappedData.action_source = serverEventDataList.action_source;
        if (serverEventDataList.event_time) mappedData.event_time = serverEventDataList.event_time;
        if (serverEventDataList.event_source_url) mappedData.event_source_url = serverEventDataList.event_source_url;
        if (serverEventDataList.opt_out) mappedData.opt_out = serverEventDataList.opt_out;
        if (serverEventDataList.event_id) mappedData.event_id = serverEventDataList.event_id;
        if (serverEventDataList.data_processing_options) {
            mappedData.data_processing_options = serverEventDataList.data_processing_options;
            if (serverEventDataList.data_processing_options_country) mappedData.data_processing_options_country = serverEventDataList.data_processing_options_country;
            if (serverEventDataList.data_processing_options_state) mappedData.data_processing_options_state = serverEventDataList.data_processing_options_state;
        }
    }

    return mappedData;
}

function addUserData(eventData, mappedData) {
  if (eventData.email) {
    mappedData.hashed_email = sha256HashIfNotHashed(eventData.email);
  } else if (eventData.hashed_email) {
    mappedData.hashed_email = eventData.hashed_email;
  }
  
  if (eventData.phone_number) {
    mappedData.hashed_phone_number = sha256HashIfNotHashed(eventData.phone_number);
  } else if (eventData.hashed_phone_number) {
    mappedData.hashed_phone_number = eventData.hashed_phone_number;
  }
  return mappedData;
}

function overrideDataIfNeeded(data, mappedData) {
    if (data.userDataList) {
        data.userDataList.forEach(d => {
            mappedData.user_data[d.name] = d.value;
        });
    }

    if (data.customEventData) {
        data.customEventData.forEach(d => {
          if (d.value !== undefined) {
            mappedData[d.name] = d.value;
          }
        });
    }

    return mappedData;
}

function cleanupData(mappedData) {
    if (mappedData.user_data) {
        let userData = {};

        for(let userDataKey in mappedData.user_data) {
            if (mappedData.user_data[userDataKey] !== undefined) {
                userData[userDataKey] = mappedData.user_data[userDataKey];
            }
        }

        mappedData.user_data = userData;
    }

    return mappedData;
}


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "_scid"
              },
              {
                "type": 1,
                "string": "sssc"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_container_data",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "set_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedCookies",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "sssc"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_scid"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_http",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://tr.snapchat.com/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Test trigger data with inherit event name to conversion API
  code: |-
    let testConfig = configTemplate;
    testConfig.inheritEventName = 'inherit';

    mock('getAllEventData', () => {
      return testEventData;
    });

    mock('getCookieValues', (cookieName) => {
      if (cookieName === '_scid') return [testCookie1];
    });

    runCode(testConfig);

    assertApi('setCookie').wasNotCalled();
    assertApi('sendHttpRequest').wasCalledWith(apiEndpoint, callback, {
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + testApiAccessToken
      },
      method: 'POST'
    }, JSON.stringify(testApiRequest));
    assertApi('gtmOnSuccess').wasCalled();
- name: Test trigger data with standard event name to conversion API
  code: |-
    let testConfig = configTemplate;
    testConfig.eventName = 'standard';
    testConfig.eventNameStandard = "PURCHASE";

    let eventData = testEventData;
    eventData.event_name = '';

    mock('getAllEventData', () => {
      return eventData;
    });

    mock('getCookieValues', (cookieName) => {
      if (cookieName === '_scid') return [testCookie1];
    });

    runCode(testConfig);

    assertApi('sendHttpRequest').wasCalledWith(apiEndpoint, callback, {
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + testApiAccessToken
      },
      method: 'POST'
    }, JSON.stringify(testApiRequest));
    assertApi('gtmOnSuccess').wasCalled();
- name: Test trigger data with custom event name to conversion API
  code: |-
    let testConfig = configTemplate;
    testConfig.eventName = 'custom';
    testConfig.eventNameCustom = "PURCHASE";

    let eventData = testEventData;
    eventData.event_name = '';

    mock('getAllEventData', () => {
      return eventData;
    });

    mock('getCookieValues', (cookieName) => {
      if (cookieName === '_scid') return [testCookie1];
    });

    runCode(testConfig);

    assertApi('sendHttpRequest').wasCalledWith(apiEndpoint, callback, {
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + testApiAccessToken
      },
      method: 'POST'
    }, JSON.stringify(testApiRequest));
    assertApi('gtmOnSuccess').wasCalled();
- name: Test set cookie and send to conversion API
  code: |
    mock('getCookieValues', (cookieName) => {
      if (cookieName === '_scid') return [];
    });

    const testConfigStandardEventName = {
      pixelId: testPixelId,
      eventName: 'standard',
      eventNameStandard: "PURCHASE",
      apiAccessToken: testApiAccessToken,
    };

    runCode(testConfigStandardEventName);

    assertApi('setCookie').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
setup: "const JSON = require('JSON');\nconst getTimestampMillis = require('getTimestampMillis');\n\
  const sha256Sync = require('sha256Sync');\nconst generateRandom = require('generateRandom');\n\
  \nconst testPixelId = 'test_pixel_id';\nconst testApiAccessToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c';\n\
  \nfunction generateUUID() {\n  let len = 36;\n  let chars = '0123456789abcdef'.split('');\n\
  \  let uuid = [];\n  \n  uuid[8] = uuid[13] = uuid[18] = uuid[23] = '-';\n  uuid[14]\
  \ = '4';\n  for (var i = 0; i < len; i++) {\n    if (!uuid[i]) {\n      uuid[i]\
  \ = chars[generateRandom(0, chars.length)];\n    }\n  }\n  return uuid.join('');\n\
  }\n\nconst testCookie1 = generateUUID();\n\nconst configTemplate = {\n  pixelId:\
  \ testPixelId,\n  apiAccessToken: testApiAccessToken,\n  customEventData: [\n  \
  \  {name: 'client_dedup_id', value: 'abc123'},\n    {name: 'item_ids', value: '[abc,def]'}\n\
  \  ]\n};\n\nconst testEventData = {\n  'event_name': 'purchase',\n  'event_time':\
  \ 1648221525,\n  'ip_override': '23.54.23.56',\n  'user_agent': 'test_user_agent',\n\
  \  'email': 'foo@bar.com',\n  'page_location': 'test_page_location',\n};\n\nlet\
  \ testApiRequest = {\n  'pixel_id' : testPixelId,\n  'event_type' : 'PURCHASE',\n\
  \  'event_conversion_type': \"WEB\",\n  'page_url': 'test_page_location',\n  'timestamp'\
  \ : 1648221525000,\n  'hashed_ip_address': sha256Hash('23.54.23.56'),\n  'user_agent':\
  \ 'test_user_agent',\n  'uuid_c1': testCookie1,\n  'integration': 'gtmss',\n  'hashed_email':\
  \ sha256Hash('foo@bar.com'),\n  'client_dedup_id': 'abc123',\n  'item_ids': '[abc,def]'\n\
  };\n\nfunction sha256Hash(input) {\n  return sha256Sync(input, {outputEncoding:\
  \ 'hex'});\n}\n\nconst apiEndpoint = 'https://tr.snapchat.com/v2/conversion';\n\
  let callback, httpBody;\nmock('sendHttpRequest', (postUrl, response, options, body)\
  \ => {\n  callback = response;\n  httpBody = body;\n  callback(200, {}, '');\n});"


___NOTES___

Created on 11/1/2021, 11:49:16 PM


