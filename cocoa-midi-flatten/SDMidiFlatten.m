#import "SDMidiFlatten.h"

@implementation SDMidiFlatten

- (id)init {
    self = [super init];

    return self;
}

- (void)dealloc {

}

- (NSMutableArray *)parsePacketList: (MIDIPacketList *)packetList {

    NSLog(@"Received a packetlist with %d messages", packetList->numPackets);

    NSMutableArray *wrappedMidiMessages = [[NSMutableArray alloc] init];

    MIDIPacket *packet = &packetList->packet[0];
    for (int i = 0; i < packetList->numPackets; i++) {

        NSData *wrappedMessage = [[NSData alloc] initWithBytes: packet->data length: packet->length];
        [wrappedMidiMessages addObject: wrappedMessage];

        packet = MIDIPacketNext(packet);
    }

    return wrappedMidiMessages;
}


@end
