//
//  ViewController.m
//  UIPickerView_Basico
//
//  Created by Henry AT on 9/30/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import "ViewController.h"

#define cantidadComponentes 2;
#define componenteAnimal 0;
#define componenteSonido 1;



@interface ViewController ()

@end

@implementation ViewController

@synthesize ultimaAccion, resultado,nombreAnimales, sonidosAnimales;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    nombreAnimales = [[NSArray alloc] initWithObjects:@"Mouse",@"Goose",@"Cat",@"Dog",@"Snake",@"Bear",@"Pig", nil];
    sonidosAnimales = [[NSArray alloc] initWithObjects:@"Oink",@"Rawr",@"Ssss",@"Roof",@"Meow",@"Honk",@"Squeak", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setUltimaAccion:nil];
    [self setResultado:nil];
    [super viewDidUnload];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return cantidadComponentes;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    NSInteger dato = componenteAnimal;
    if (component == dato) {
        return [nombreAnimales count];
    } else {
        return [sonidosAnimales count];
    }

    
}



 - (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
     NSInteger dato = componenteAnimal;     
 if (component==dato) {
 return [nombreAnimales objectAtIndex:row];
 } else {
 return [sonidosAnimales objectAtIndex:row];
 }
 }


@end
