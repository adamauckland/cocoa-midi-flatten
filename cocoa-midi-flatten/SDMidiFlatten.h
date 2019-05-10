#import <Foundation/Foundation.h>
#import <CoreMIDI/CoreMIDI.h>

@interface SDMidiFlatten : NSObject

/**
 * Converts a MIDIPacketList C struct to an array of NSData instances, where
 * each NSData instance encapsulates the data for a MIDI packet.
 */
- (NSMutableArray *)parsePacketList: (MIDIPacketList *)packetList;

@end
