use v5.12;
use warnings;
BEGIN { unshift @INC, 'lib', '../../../lib'}

use Chart::Bars;
my $g = Chart::Bars->new( 400, 400 );
$g->add_dataset( qw/ Peter Paul Mary/ );
$g->add_dataset( 30, 40, 80, );
$g->add_dataset( 80, 60, 30, );
$g->add_dataset( 50, 30, 60, );
$g->set(
    title         => 'Expenses 2020 - 2022',
    x_label       => 'Recipient',
    y_label       => 'Amount',
    legend_labels => ['2020', '2021', '2022'],    
    y_grid_lines  => 'true',
    min_val       =>  0,
    precision     =>  0,
#        spaced_bars   =>  'false',
    colors => {
        y_grid_lines => 'gray70',
        misc         => 'gray55',
        text         => 'gray55',
        x_label      => 'gray40',
        y_label      => 'gray40',
        title        => 'gray20',
        dataset0     => 'royalblue4',
        dataset1     => 'royalblue3',
        dataset2     => 'royalblue2',

    },
);
$g->png("bars1.png");
