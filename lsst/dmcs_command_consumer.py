import copy
import sys
sys.path.append("../ctrl_iip/python/lsst/iip/")
from SimplePublisher import SimplePublisher
from Consumer import Consumer 

pub = SimplePublisher("amqp://DMCS_PUB:DMCS_PUB@140.252.32.128:5672/%2ftest_at") 

def on_message(ch, method, properties, body): 
    ch.basic_ack(method.delivery_tag)
    msg = copy.deepcopy(body)
    msg_type = body["MSG_TYPE"] + "_ACK"
    msg["MSG_TYPE"] = msg_type
    msg["ACK_BOOL"] = 1
    msg["ACK_STATEMENT"] = "everything went well"
    pub.publish_message("dmcs_ocs_publish", msg)

sub = Consumer("amqp://DMCS_PUB:DMCS_PUB@140.252.32.128:5672/%2ftest_at", "ocs_dmcs_consume", "hello", on_message, "YAML") 
sub.run()
