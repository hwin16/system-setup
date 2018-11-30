import copy
import sys
sys.path.append("../ctrl_iip/python/lsst/iip/")
from SimplePublisher import SimplePublisher
from Consumer import Consumer 
import time

pub = SimplePublisher("amqp://DMCS_PUB:DMCS_PUB@140.252.32.128:5672/%2ftest_at") 

msg = {} 
msg["MSG_TYPE"] = "SUMMARY_STATE_EVENT"
msg["DEVICE"] = "AT"
msg["CURRENT_STATE"] = "STANDBY"
pub.publish_message("dmcs_ocs_publish", msg)
time.sleep(2)

msg = {} 
msg["MSG_TYPE"] = "SUMMARY_STATE_EVENT"
msg["DEVICE"] = "AT"
msg["CURRENT_STATE"] = "OFFLINE"
pub.publish_message("dmcs_ocs_publish", msg)
time.sleep(2)

msg = {} 
msg["MSG_TYPE"] = "SUMMARY_STATE_EVENT"
msg["DEVICE"] = "AT"
msg["CURRENT_STATE"] = "DISABLE"
pub.publish_message("dmcs_ocs_publish", msg)
time.sleep(2)

msg = {} 
msg["MSG_TYPE"] = "SUMMARY_STATE_EVENT"
msg["DEVICE"] = "AT"
msg["CURRENT_STATE"] = "ENABLE"
pub.publish_message("dmcs_ocs_publish", msg)
time.sleep(2)

msg = {} 
msg["MSG_TYPE"] = "SUMMARY_STATE_EVENT"
msg["DEVICE"] = "AT"
msg["CURRENT_STATE"] = "FAULT"
pub.publish_message("dmcs_ocs_publish", msg)
time.sleep(2)

msg = {} 
msg["MSG_TYPE"] = "RECOMMENDED_SETTINGS_VERSION_EVENT"
msg["DEVICE"] = "AT"
msg["CFG_KEY"] = "Normal"
pub.publish_message("dmcs_ocs_publish", msg)
time.sleep(2)

msg = {} 
msg["MSG_TYPE"] = "SETTINGS_APPLIED_EVENT"
msg["DEVICE"] = "AT"
msg["SETTINGS"] = "Normal"
msg["APPLIED"] = True # check 
msg["TS_XML_VERSION"] = "v3.8.38"
msg["TS_SAL_VERSION"] = "v3.8.38"
msg["L1_DM_REPO_TAG"] = "ats_turnkey_system"
pub.publish_message("dmcs_ocs_publish", msg)
time.sleep(2)

msg = {} 
msg["MSG_TYPE"] = "APPLIED_SETTINGS_MATCH_START_EVENT"
msg["DEVICE"] = "AT"
msg["APPLIED"] = True # check 
pub.publish_message("dmcs_ocs_publish", msg)
time.sleep(2)

msg = {} 
msg["MSG_TYPE"] = "ERROR_CODE_EVENT"
msg["DEVICE"] = "AT"
msg["ERROR_CODE"] = 3500 
pub.publish_message("dmcs_ocs_publish", msg)
time.sleep(2)

msg = {} 
msg["MSG_TYPE"] = "TELEMETRY"
msg["DEVICE"] = "AT"
msg["STATUS_CODE"] = 1
msg["DESCRIPTION"] = "File is archived."
pub.publish_message("telemetry_queue", msg)
time.sleep(2)
