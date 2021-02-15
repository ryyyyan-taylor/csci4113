# groups
# managers  1551
# accounting  1552
# sales  1553
group {"managers":
        ensure => "present",
        gid     => "1551",
}
file { '/home/managers':
        mode => '2770',
        source => 'file:/etc/skel/',
        recurse => 'remote',
        ensure => "directory",
        owner => 'mscott',
        group => 'managers',
}
group {"accounting":
        ensure => "present",
        gid     => "1552",
}
file { '/home/accounting':
        mode => '2770',
        source => 'file:/etc/skel/',
        recurse => 'remote',
        ensure => "directory",
        owner => 'amartin',
        group => 'accounting',
}
group {"sales":
        ensure => "present",
        gid     => "1553",
}
file { '/home/sales':
        mode => '2770',
        source => 'file:/etc/skel/',
        recurse => 'remote',
        ensure => "directory",
        owner => 'abernard',
        group => 'sales',
}


#mscott
#1501
user { "mscott":
        uid => "1501",
        ensure => present,
        comment => "Michael Scott  Regional Manager",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "mscott",
        groups  => ["managers"],
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/mscott",
        managehome => true,
}
file { '/home/mscott':
        ensure => "directory",
        owner => 'mscott',
        group => 'mscott',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "mscott":
        ensure => "present",
        gid => "1501",
}

#########
#dschrute
#1502
user { "dschrute":
        uid => "1502",
        ensure => present,
        comment => "Dwight Schrute  Ast.Regional Manager",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "dschrute",
        groups  => ["managers"],
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/dschrute",
        managehome => true,
}
group { "dschrute":
        ensure => "present",
        gid => "1502",
}
file { '/home/dschrute':
        ensure => "directory",
        owner => 'dschrute',
        group => 'dschrute',
        mode => '2755',
        source => 'file:/etc/skel/',
}

#########
#jhalpert
#1503
user { "jhalpert":
        uid => "1503",
        ensure => present,
        comment => "Jim Halpert  Ast.Regional Manager",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "jhalpert",
        groups  => ["managers"],
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/jhalpert",
        managehome => true,
}
file { '/home/jhalpert':
        ensure => "directory",
        owner => 'jhalpert',
        group => 'jhalpert',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "jhalpert":
        ensure => "present",
        gid => "1503",
}


########
#amartin
#1504
user { "amartin":
        uid => "1504",
        ensure => present,
        comment => "Angela Martin  Sr.Accountant",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "amartin",
        groups  => ["accounting"],
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/amartin",
        managehome => true,
}
file { '/home/amartin':
        ensure => "directory",
        owner => 'amartin',
        group => 'amartin',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "amartin":
        ensure => "present",
        gid => "1504",
}

#######
#kmalone
#1505
user { "kmalone":
        uid => "1505",
        ensure => present,
        comment => "Kevin Malone  Accountant",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "kmalone",
        groups  => ["accounting"],
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/kmalone",
        managehome => true,
}
file { '/home/kmalone':
        ensure => "directory",
        owner => 'kmalone',
        group => 'kmalone',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "kmalone":
        ensure => "present",
        gid => "1505",
}

########
#omartinez
#1506
user { "omartinez":
        uid => "1506",
        ensure => present,
        comment => "Oscar Martinez  Accountant",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "omartinez",
        groups  => ["accounting"],
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/omartinez",
        managehome => true,
}

file { '/home/omartinez':
        ensure => "directory",
        owner => 'omartinez',
        group => 'omartinez',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "omartinez":
        ensure => "present",
        gid => "1506",
}

#######
#abernard
#1507
user { "abernard":
        uid => "1507",
        ensure => present,
        comment => "Andy Bernard  Regional Director in charge of Sales",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "abernard",
        groups  => ["sales"],
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/abernard",
        managehome => true,
}

file { '/home/abernard':
        ensure => "directory",
        owner => 'abernard',
        group => 'abernard',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "abernard":
        ensure => "present",
        gid => "1507",
}

#######
#plapin
#1508
user { "plapin":
        uid => "1508",
        ensure => present,
        comment => "Phyllis Lapin  Sales Rep.",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "plapin",
        groups  => ["sales"],
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/plapin",
        managehome => true,
}

file { '/home/plapin':
        ensure => "directory",
        owner => 'plapin',
        group => 'plapin',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "plapin":
        ensure => "present",
        gid => "1508",
}

######
#shudson
#1509
user { "shudson":
        uid => "1509",
        ensure => present,
        comment => "Stanley Hundson  Sales Rep.",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "shudson",
        groups  => ["sales"],
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/shudson",
        managehome => true,
}
file { '/home/shudson':
        ensure => "directory",
        owner => 'shudson',
        group => 'shudson',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "shudson":
        ensure => "present",
        gid => "1509",
}

##
# tflenderson
# 1510
user { "tflenderson":
        uid => "1510",
        ensure => present,
        comment => "Toby Flenderson  HR.",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "tflenderson",
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/tflenderson",
        managehome => true,
}

file { '/home/tflenderson':
        ensure => "directory",
        owner => 'tflenderson',
        group => 'tflenderson',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "tflenderson":
        ensure => "present",
        gid => "1510",
}


#cbratton
#1511
user { "cbratton":
        uid => "1511",
        ensure => present,
        comment => "Creed Bratton  Quality assurance",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "cbratton",
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/cbratton",
        managehome => true,
}

file { '/home/cbratton':
        ensure => "directory",
        owner => 'cbratton',
        group => 'cbratton',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "cbratton":
        ensure => "present",
        gid => "1511",
}


#dphilbin
#1512
user { "dphilbin":
        uid => "1512",
        ensure => present,
        comment => "Darryl Philbin  Warehouse foreman",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "dphilbin",
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/dphilbin",
        managehome => true,
}

file { '/home/dphilbin':
        ensure => "directory",
        owner => 'dphilbin',
        group => 'dphilbin',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "dphilbin":
        ensure => "present",
        gid => "1512",
}

######
#mpalmer
#1513
user { "mpalmer":
        uid => "1513",
        ensure => present,
        comment => "Meredith Palmer  Supplier Relations",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "mpalmer",
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/mpalmer",
        managehome => true,
}

file { '/home/mpalmer':
        ensure => "directory",
        owner => 'mpalmer',
        group => 'mpalmer',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "mpalmer":
        ensure => "present",
        gid => "1513",
}

######
#kkapoor
#1514
user { "kkapoor":
        uid => "1514",
        ensure => present,
        comment => "Kelly Kapoor  Customer Service Representative",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "kkapoor",
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/kkapoor",
        managehome => true,
}

file { '/home/kkapoor':
        ensure => "directory",
        owner => 'kkapoor',
        group => 'kkapoor',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "kkapoor":
        ensure => "present",
        gid => "1514",
}

######
#pbeesly
#1515
user { "pbeesly":
        uid => "1515",
        ensure => present,
        comment => "Pam Beesly  Receptionist",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "pbeesly",
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/pbeesly",
        managehome => true,
}

file { '/home/pbeesly':
        ensure => "directory",
        owner => 'pbeesly',
        group => 'pbeesly',
        mode => '2755',
        source => 'file:/etc/skel/',
}
group { "pbeesly":
        ensure => "present",
        gid => "1515",
}

#####
#rtaylor
#1516
user { "rtaylor":
        uid => "1516",
        ensure => present,
        comment => "Ryan Taylor  SysAdmin",
        password => '$1$PsN/aYou$yA0ZRm6kPftixjFc1amNp.',
        gid     => "rtaylor",
        groups => ["managers","accounting","sales"],
        membership => minimum,
        shell => "/bin/bash",
        home => "/home/rtaylor",
        managehome => true,
}
file { '/home/rtaylor':
        ensure => "directory",
        owner => 'rtaylor',
        group => 'rtaylor',
        mode => '4700',
        source => 'file:/etc/skel/',
}
group {"rtaylor":
        ensure => "present",
        gid => "1516",
}
