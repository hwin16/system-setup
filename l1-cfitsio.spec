%define lsstpath /opt/lsst

Name:           lsst-cfitsio		
Version:        3.45.0  	
Release:	1%{?dist}
Summary:        LSST cfitsio Library 3.45.0

Group:          Applications/System	
License:        MIT	
URL:            https://heasarc.gsfc.nasa.gov/fitsio	
Source0:        http://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/cfitsio3450.tar.gz	

BuildRequires:  cmake	

%description
Cfitsio Library for usage in Large Synoptic Survey Telescope Data
Management System

%prep
%setup -q -n cfitsio
mkdir -p %{buildroot}%{lsstpath}/bin
mkdir -p %{buildroot}%{lsstpath}/lib
mkdir -p %{buildroot}%{lsstpath}/include
mkdir -p %{buildroot}%{lsstpath}/config
mkdir -p %{buildroot}%{lsstpath}/share

%build
%cmake . -DCMAKE_INSTALL_PREFIX=%{lsstpath}
%make_build
./configure
make 
make fpack

%install
%make_install
make 

%check
ctest -V %{?_smp_mflags}

%files
/opt/lsst/bin/*
/opt/lsst/include/*
/opt/lsst/lib64/*

%doc

%changelog

