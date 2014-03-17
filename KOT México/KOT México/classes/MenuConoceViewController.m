//
//  MenuConoceViewController.m
//  KOT México
//
//  Created by Benjamín Hernández on 27/12/13.
//  Copyright (c) 2013 Naranya. All rights reserved.
//

#import "MenuConoceViewController.h"
#import "CollapsableTableViewViewController.h"
#import "ProductosViewController.h"
#import "IMCViewController.h"

@interface MenuConoceViewController ()

@end

@implementation MenuConoceViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Conoce KOT";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)productosKOT:(id)sender{
    ProductosViewController *productos = [[[ProductosViewController alloc]initWithNibName:@"ProductosViewController" bundle:nil]autorelease];
     [self.navigationController pushViewController:productos animated:YES];
}

- (IBAction)especialistaKOT:(id)sender {
    CollapsableTableViewViewController *control = [[[CollapsableTableViewViewController alloc]initWithNibName:@"CollapsableTableViewViewController" bundle:nil]autorelease];
    [self.navigationController pushViewController:control animated:YES];
}

- (IBAction)imc:(id)sender {
    IMCViewController *imc = [[[IMCViewController alloc]initWithNibName:@"IMCViewController" bundle:nil]autorelease];
    [self.navigationController pushViewController:imc animated:YES];
}


- (void)dealloc {
    [super dealloc];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

@end
