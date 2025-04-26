// Package weather is awesome.
package weather

// CurrentCondition represents the current eather conditions in spoken word.
var CurrentCondition string

// CurrentLocation is the city or well-known region that a weather report is typically help within.
var CurrentLocation string

// Forecast calcuates a weather report based on the city and condition parameters.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
