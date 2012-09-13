#import "OBAArrivalAndDepartureInstanceRef.h"


@implementation OBAArrivalAndDepartureInstanceRef

@synthesize tripInstance = _tripInstance;
@synthesize stopId = _stopId;
@synthesize stopSequence = _stopSequence;

- (id) initWithTripInstance:(OBATripInstanceRef*)tripInstance stopId:(NSString*)stopId stopSequence:(NSInteger)stopSequence {
    self = [super init];
	if( self ) {
		_tripInstance = tripInstance;
		_stopId = stopId;
		_stopSequence = stopSequence;
	}
	return self;
}


+ (OBAArrivalAndDepartureInstanceRef*) refWithTripInstance:(OBATripInstanceRef*)tripInstance stopId:(NSString*)stopId stopSequence:(NSInteger)stopSequence {
	return [[self alloc] initWithTripInstance:tripInstance stopId:stopId stopSequence:stopSequence];
}

- (BOOL) isEqualWithOptionalVehicleId:(OBAArrivalAndDepartureInstanceRef*)ref {
    if ( ![_tripInstance isEqualWithOptionalVehicleId:ref.tripInstance] )
        return FALSE;
    if ( ![_stopId isEqualToString:ref.stopId] )
        return FALSE;
    if ( _stopSequence != ref.stopSequence )
        return FALSE;
    return TRUE;
}

- (BOOL) isEqual:(id)object {
    if (self == object)
        return TRUE;
    if (object == nil)
        return FALSE;
    if ( ![object isKindOfClass:[OBAArrivalAndDepartureInstanceRef class]] )
        return FALSE;
    OBAArrivalAndDepartureInstanceRef * instanceRef = object;
    if ( ![_tripInstance isEqual:instanceRef.tripInstance] )
        return FALSE;
    if ( ![_stopId isEqualToString:instanceRef.stopId] )
        return FALSE;
    if ( _stopSequence != instanceRef.stopSequence )
        return FALSE;
    return TRUE;
}

- (NSString*) description {
    return [NSString stringWithFormat:@"(tripInstance=%@, stopId=%@, stopSequence=%d)",[_tripInstance description],_stopId,_stopSequence];
}

@end
