#import "MyCalendar.h"
#import <stdio.h>

const char *getNSCalendarIdentifierName(id ident)
{
  const char *str;

  return [ident cStringUsingEncoding: NSASCIIStringEncoding];
}

int main()
{
  NSCalendar *mycal;

  mycal = [NSCalendar calendarWithIdentifier: NSCalendarIdentifierJapanese];

  printf("Id: %s\n", getNSCalendarIdentifierName(mycal.calendarIdentifier));
  printf("firstWeekday: %lu\n", mycal.firstWeekday);
  printf("TZ: %s(%ld)\n",
	 [mycal.timeZone.abbreviation cStringUsingEncoding: NSUTF8StringEncoding],
	 mycal.timeZone.secondsFromGMT);
}
