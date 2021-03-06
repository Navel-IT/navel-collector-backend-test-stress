# Copyright (C) 2015-2017 Yoann Le Garff, Nicolas Boquet and Yann Le Bras
# navel-collector-backend-test-stress is licensed under the Apache License, Version 2.0

#-> BEGIN

#-> initialization

package Navel::Collector::Backend::Test::Stress 0.1;

use Navel::Base;

use constant EVENT_CLASS => undef;

use Navel::AnyEvent::Pool;

#-> class variables

my $job_pool = Navel::AnyEvent::Pool->new;

#-> functions

sub init {
    for (my $i = 0; $i < W::collector()->{backend_input}->{number_of_job}; $i++) {
        $job_pool->attach_timer(
            name => $i,
            singleton => 1,
            interval => 1,
            callback => sub {
                my $timer = shift->begin;

                W::queue()->enqueue(
                    W::event(
                        id => $timer->{name},
                        data => [
                            0..W::collector()->{backend_input}->{array_size}
                        ]
                    )
                );

                $timer->end;
            }
        );
    }
}

sub enable {
    $_->enable for @{$job_pool->timers};

    shift->(1);
}

sub disable {
    $_->disable for @{$job_pool->timers};

    shift->(1);
}

1;

#-> END

__END__

=pod

=encoding utf8

=head1 NAME

Navel::Collector::Twitter::Stream::Track

=head1 COPYRIGHT

Copyright (C) 2015-2017 Yoann Le Garff, Nicolas Boquet and Yann Le Bras

=head1 LICENSE

navel-collector-backend-test-stress is licensed under the Apache License, Version 2.0

=cut
