[root@instance-1 a2zdocker]# ls
certs  Dockerfile  docker-run.sh  perlmojo  README.md  start_apps.sh
[root@instance-1 a2zdocker]# ./docker-run.sh
Building a2zdotblue/c7-systemd-perl-mojo-02
Sending build context to Docker daemon  1.454MB
Step 1/10 : FROM a2zdotblue/c7-systemd-perl-mojo-02
 ---> fa8ed4ecbd0c
Step 2/10 : LABEL "url"="c7.gap.a1z.us"
 ---> Running in ef6b1e33fd5f
Removing intermediate container ef6b1e33fd5f
 ---> 4e65be93e2b2
Step 3/10 : RUN yum -y update; yum -y install nano wget vim mariadb-server perl-CPAN perl-DateTime
 ---> Running in b504c049415c
Loaded plugins: fastestmirror, ovl
Loading mirror speeds from cached hostfile
 * base: mirror.oss.ou.edu
 * extras: bay.uchicago.edu
 * updates: mirrors.umflint.edu
No packages marked for update
Loaded plugins: fastestmirror, ovl
Loading mirror speeds from cached hostfile
 * base: mirror.oss.ou.edu
 * extras: bay.uchicago.edu
 * updates: mirrors.umflint.edu
Package nano-2.3.1-10.el7.x86_64 already installed and latest version
Package wget-1.14-18.el7_6.1.x86_64 already installed and latest version
Package 2:vim-enhanced-7.4.629-6.el7.x86_64 already installed and latest version
Package 1:mariadb-server-5.5.65-1.el7.x86_64 already installed and latest version
Package perl-CPAN-1.9800-295.el7.noarch already installed and latest version
Package 2:perl-DateTime-1.04-6.el7.x86_64 already installed and latest version
Nothing to do
Removing intermediate container b504c049415c
 ---> 5ef585c1a9b8
Step 4/10 : RUN yum -y install perl-*; cpanm CPAN Cpanel::JSON::XS EV IO::Socket::Socks IO::Socket::SSL Net::DNS::Native Role::Tiny
 ---> Running in 970ada6a536f
Loaded plugins: fastestmirror, ovl
Loading mirror speeds from cached hostfile
 * base: mirror.oss.ou.edu
 * extras: bay.uchicago.edu
 * updates: mirrors.umflint.edu
Package perl-HTML-Tagset-3.20-15.el7.noarch already installed and latest version
Package 1:perl-parent-0.225-244.el7.noarch already installed and latest version
Package perl-Test-ClassAPI-1.06-14.el7.noarch already installed and latest version
Package 1:perl-Params-Check-0.38-2.el7.noarch already installed and latest version
Package 1:perl-Sys-Guestfs-1.40.2-9.el7.x86_64 already installed and latest version
Package perl-Newt-1.08-36.el7.x86_64 already installed and latest version
Package perl-CPAN-Meta-2.120921-5.el7.noarch already installed and latest version
Package perl-Unicode-String-2.09-29.el7.x86_64 already installed and latest version
Package perl-Crypt-OpenSSL-Random-0.04-21.el7.x86_64 already installed and latest version
Package perl-App-cpanminus-1.6922-2.el7.noarch already installed and latest version
Package perl-PCP-LogSummary-4.3.2-7.el7_8.x86_64 already installed and latest version
Package perl-HTTP-Date-6.02-8.el7.noarch already installed and latest version
Package perl-Encode-devel-2.51-7.el7.x86_64 already installed and latest version
Package perl-DateTime-Format-DateParse-0.05-5.el7.noarch already installed and latest version
Package perl-Sys-Syslog-0.33-3.el7.x86_64 already installed and latest version
Package perl-File-Temp-0.23.01-3.el7.noarch already installed and latest version
Package perl-Text-ParseWords-3.29-4.el7.noarch already installed and latest version
Package perl-CPANPLUS-0.91.38-4.el7.noarch already installed and latest version
Package perl-Test-Inter-1.05-2.el7.noarch already installed and latest version
Package perl-XML-XPathEngine-0.14-3.el7.noarch already installed and latest version
Package 1:perl-Sub-Uplevel-0.24-4.el7.noarch already installed and latest version
Package perl-Scalar-List-Utils-1.27-248.el7.x86_64 already installed and latest version
Package 2:perl-Module-Build-0.40.05-2.el7.noarch already installed and latest version
Package perl-Pod-Checker-1.60-2.el7.noarch already installed and latest version
Package perl-Text-Diff-1.41-5.el7.noarch already installed and latest version
Package perl-homedir-1.008010-4.el7.noarch already installed and latest version
Package 1:perl-IPC-Cmd-0.80-4.el7.noarch already installed and latest version
Package 1:perl-IO-Zlib-1.10-295.el7.noarch already installed and latest version
Package perl-Perl4-CoreLibs-0.003-7.el7.noarch already installed and latest version
Package perl-Sub-Exporter-0.986-2.el7.noarch already installed and latest version
Package perl-local-lib-1.008010-4.el7.noarch already installed and latest version
Package perl-Test-CPAN-Meta-0.23-2.el7.noarch already installed and latest version
Package perl-DBD-Pg-2.19.3-4.el7.x86_64 already installed and latest version
Package perl-Pod-LaTeX-0.61-2.el7.noarch already installed and latest version
Package perl-Pod-Coverage-TrustPod-0.100002-5.el7.noarch already installed and latest version
Package perl-Encode-2.51-7.el7.x86_64 already installed and latest version
Package 1:perl-Devel-Symdump-2.10-2.el7.noarch already installed and latest version
Package 1:perl-Digest-SHA-5.85-4.el7.x86_64 already installed and latest version
Package perl-HTTP-Negotiate-6.01-5.el7.noarch already installed and latest version
Package perl-Data-Dumper-2.145-3.el7.x86_64 already installed and latest version
Package 1:perl-Module-CoreList-2.76.02-295.el7.noarch already installed and latest version
Package perl-Locale-Maketext-Gettext-1.27-13.el7.noarch already installed and latest version
Package perl-Devel-Leak-0.03-22.el7.x86_64 already installed and latest version
Package perl-CSS-Tiny-1.19-5.el7.noarch already installed and latest version
Package perl-XML-Twig-3.44-2.el7.noarch already installed and latest version
Package perl-Sys-Virt-4.5.0-2.el7.x86_64 already installed and latest version
Package perl-CPAN-Meta-Requirements-2.122-7.el7.noarch already installed and latest version
Package perl-Mozilla-LDAP-1.5.3-12.el7.x86_64 already installed and latest version
Package perl-File-HomeDir-1.00-4.el7.noarch already installed and latest version
Package perl-Devel-Cycle-1.11-13.el7.noarch already installed and latest version
Package perl-Net-SMTP-SSL-1.01-13.el7.noarch already installed and latest version
Package perl-HTTP-Daemon-6.01-8.el7.noarch already installed and latest version
Package perl-PCP-PMDA-4.3.2-7.el7_8.x86_64 already installed and latest version
Package perl-Encode-Locale-1.03-5.el7.noarch already installed and latest version
Package perl-XML-Parser-2.41-10.el7.x86_64 already installed and latest version
Package perl-Module-Load-Conditional-0.54-3.el7.noarch already installed and latest version
Package 4:perl-5.16.3-295.el7.x86_64 already installed and latest version
Package perl-Crypt-OpenSSL-Bignum-0.04-18.el7.x86_64 already installed and latest version
Package perl-Data-Peek-0.38-3.el7.x86_64 already installed and latest version
Package perl-GSSAPI-0.28-9.el7.x86_64 already installed and latest version
Package perl-Test-Pod-Coverage-1.08-21.el7.noarch already installed and latest version
Package perl-File-ShareDir-1.03-8.el7.noarch already installed and latest version
Package perl-XML-Handler-YAWriter-0.23-18.el7.noarch already installed and latest version
Package perl-IO-HTML-1.00-2.el7.noarch already installed and latest version
Package perl-Class-Singleton-1.4-14.el7.noarch already installed and latest version
Package 1:perl-Module-Loaded-0.08-295.el7.noarch already installed and latest version
Package 1:perl-Compress-Raw-Zlib-2.061-4.el7.x86_64 already installed and latest version
Package perl-Parallel-Iterator-1.00-8.el7.noarch already installed and latest version
Package perl-Test-MinimumVersion-0.101080-10.el7.noarch already installed and latest version
Package perl-Devel-Cover-1.03-3.el7.x86_64 already installed and latest version
Package perl-Sys-MemInfo-0.91-7.el7.x86_64 already installed and latest version
Package perl-XML-Filter-BufferText-1.01-17.el7.noarch already installed and latest version
Package perl-Perl-MinimumVersion-1.32-2.el7.noarch already installed and latest version
Package perl-CGI-Session-4.35-16.el7.noarch already installed and latest version
Package perl-Pod-Spell-1.04-4.el7.noarch already installed and latest version
Package perl-AppConfig-1.66-20.el7.noarch already installed and latest version
Package perl-Pod-Eventual-0.093330-12.el7.noarch already installed and latest version
Package perl-Digest-1.17-245.el7.noarch already installed and latest version
Package perl-Test-Differences-0.5000-10.el7.noarch already installed and latest version
Package perl-Version-Requirements-0.101022-244.el7.noarch already installed and latest version
Package perl-JSON-tests-2.59-2.el7.noarch already installed and latest version
Package perl-DateTime-Locale-0.45-6.el7.noarch already installed and latest version
Package perl-Time-Piece-1.20.1-295.el7.x86_64 already installed and latest version
Package perl-Locale-PO-0.23-2.el7.noarch already installed and latest version
Package perl-Locale-Codes-3.26-2.el7.noarch already installed and latest version
Package perl-Image-Xpm-1.09-21.el7.noarch already installed and latest version
Package perl-Log-Message-Simple-0.10-2.el7.noarch already installed and latest version
Package perl-Browser-Open-0.04-6.el7.noarch already installed and latest version
Package perl-Crypt-SSLeay-0.64-5.el7.x86_64 already installed and latest version
Package perl-libintl-1.20-12.el7.x86_64 already installed and latest version
Package perl-Pod-Usage-1.63-3.el7.noarch already installed and latest version
Package perl-SNMP_Session-1.13-5.el7.noarch already installed and latest version
Package perl-Net-DNS-0.72-6.el7.x86_64 already installed and latest version
Package perl-IO-Tty-1.10-11.el7.x86_64 already installed and latest version
Package perl-Sub-Install-0.926-6.el7.noarch already installed and latest version
Package perl-Image-Xbm-1.08-21.el7.noarch already installed and latest version
Package perl-Test-Exception-0.32-2.el7.noarch already installed and latest version
Package perl-MailTools-2.12-2.el7.noarch already installed and latest version
Package 4:perl-libs-5.16.3-295.el7.x86_64 already installed and latest version
Package perl-hivex-1.3.10-6.9.el7.x86_64 already installed and latest version
Package perl-Archive-Tar-1.92-3.el7.noarch already installed and latest version
Package 4:perl-Time-HiRes-1.9725-3.el7.x86_64 already installed and latest version
Package perl-Capture-Tiny-0.24-1.el7.noarch already installed and latest version
Package 1:perl-Object-Accessor-0.42-295.el7.noarch already installed and latest version
Package perl-XML-DOM-1.44-19.el7.noarch already installed and latest version
Package perl-Package-Stash-0.34-2.el7.noarch already installed and latest version
Package perl-HTML-FormatText-WithLinks-0.14-8.el7.noarch already installed and latest version
Package perl-Test-Spelling-0.19-2.el7.noarch already installed and latest version
Package perl-Test-NoTabs-1.3-5.el7.noarch already installed and latest version
Package perl-XML-TokeParser-0.05-12.el7.noarch already installed and latest version
Package perl-Digest-SHA1-2.13-9.el7.x86_64 already installed and latest version
Package perl-Crypt-PasswdMD5-1.3-17.el7.noarch already installed and latest version
Package 1:perl-Parse-CPAN-Meta-1.4404-5.el7.noarch already installed and latest version
Package perl-String-Similarity-1.04-10.el7.x86_64 already installed and latest version
Package 1:perl-LDAP-0.56-6.el7.noarch already installed and latest version
Package perl-JSON-2.59-2.el7.noarch already installed and latest version
Package perl-Test-Deep-0.110-2.el7.noarch already installed and latest version
Package perl-threads-1.87-4.el7.x86_64 already installed and latest version
Package perl-Params-Validate-1.08-4.el7.x86_64 already installed and latest version
Package perl-Net-Daemon-0.48-5.el7.noarch already installed and latest version
Package perl-Test-Output-1.01-7.el7.noarch already installed and latest version
Package perl-SGMLSpm-1.03ii-31.el7.noarch already installed and latest version
Package perl-Font-TTF-1.02-3.el7.noarch already installed and latest version
Package perl-Text-CharWidth-0.04-18.el7.x86_64 already installed and latest version
Package perl-Text-Iconv-1.7-18.el7.x86_64 already installed and latest version
Package perl-Test-Portability-Files-0.05-18.el7.noarch already installed and latest version
Package perl-Devel-CheckLib-0.99-2.el7.noarch already installed and latest version
Package perl-DBIx-Simple-1.35-7.el7.noarch already installed and latest version
Package perl-CPAN-Changes-0.20-2.el7.noarch already installed and latest version
Package perl-core-5.16.3-295.el7.x86_64 already installed and latest version
Package perl-Crypt-OpenSSL-RSA-0.28-7.el7.x86_64 already installed and latest version
Package perl-Business-ISBN-Data-20120719.001-2.el7.noarch already installed and latest version
Package perl-Tree-DAG_Node-1.12-2.el7.noarch already installed and latest version
Package perl-IO-Socket-IP-0.21-5.el7.noarch already installed and latest version
Package perl-Socket6-0.23-15.el7.x86_64 already installed and latest version
Package perl-Test-NoWarnings-1.04-2.el7.noarch already installed and latest version
Package perl-Parse-Yapp-1.05-50.el7.noarch already installed and latest version
Package 1:perl-Log-Message-0.08-3.el7.noarch already installed and latest version
Package perl-Package-Generator-0.103-14.el7.noarch already installed and latest version
Package perl-constant-1.27-2.el7.noarch already installed and latest version
Package perl-Task-Weaken-1.04-6.el7.noarch already installed and latest version
Package perl-ExtUtils-Manifest-1.61-244.el7.noarch already installed and latest version
Package perl-Test-SubCalls-1.09-14.el7.noarch already installed and latest version
Package perl-Test-Object-0.07-17.el7.noarch already installed and latest version
Package perl-Git-SVN-1.8.3.1-23.el7_8.noarch already installed and latest version
Package perl-Module-Runtime-0.013-4.el7.noarch already installed and latest version
Package perl-Pod-Parser-1.61-2.el7.noarch already installed and latest version
Package perl-Net-SSLeay-1.55-6.el7.x86_64 already installed and latest version
Package perl-String-Format-1.16-11.el7.noarch already installed and latest version
Package perl-Perl-Critic-1.118-5.el7.noarch already installed and latest version
Package perl-Test-Script-1.07-12.el7.noarch already installed and latest version
Package perl-Carp-Clan-6.04-10.el7.noarch already installed and latest version
Package perl-Module-Signature-0.73-2.el7.noarch already installed and latest version
Package 1:perl-Devel-StackTrace-1.30-2.el7.noarch already installed and latest version
Package perl-Time-Local-1.2300-2.el7.noarch already installed and latest version
Package perl-Class-ISA-0.36-1010.el7.noarch already installed and latest version
Package perl-XML-SAX-0.99-9.el7.noarch already installed and latest version
Package perl-IO-CaptureOutput-1.1102-9.el7.noarch already installed and latest version
Package perl-PPIx-Regexp-0.034-3.el7.noarch already installed and latest version
Package perl-Font-AFM-1.20-13.el7.noarch already installed and latest version
Package perl-Data-OptList-0.107-9.el7.noarch already installed and latest version
Package perl-IPC-Run3-0.045-6.el7.noarch already installed and latest version
Package perl-Getopt-Long-2.40-3.el7.noarch already installed and latest version
Package perl-File-Copy-Recursive-0.38-14.el7.noarch already installed and latest version
Package perl-HTML-Parser-3.71-4.el7.x86_64 already installed and latest version
Package perl-PPIx-Utilities-1.001000-8.el7.noarch already installed and latest version
Package perl-Config-Simple-4.59-15.el7.noarch already installed and latest version
Package perl-Encode-Detect-1.01-13.el7.x86_64 already installed and latest version
Package perl-List-MoreUtils-0.33-9.el7.x86_64 already installed and latest version
Package perl-File-Which-1.09-12.el7.noarch already installed and latest version
Package perl-Devel-EnforceEncapsulation-0.50-8.el7.noarch already installed and latest version
Package perl-WWW-RobotRules-6.02-5.el7.noarch already installed and latest version
Package perl-File-Slurp-9999.19-6.el7.noarch already installed and latest version
Package perl-Parse-RecDescent-1.967009-5.el7.noarch already installed and latest version
Package perl-DBD-MySQL-4.023-6.el7.x86_64 already installed and latest version
Package 1:perl-Error-0.17020-2.el7.noarch already installed and latest version
Package perl-Test-Requires-0.06-10.el7.noarch already installed and latest version
Package perl-Package-Stash-XS-0.26-3.el7.x86_64 already installed and latest version
Package perl-Locale-Maketext-1.23-3.el7.noarch already installed and latest version
Package perl-NetAddr-IP-4.069-3.el7.x86_64 already installed and latest version
Package perl-Date-Manip-6.41-2.el7.noarch already installed and latest version
Package perl-DateTime-TimeZone-1.70-2.el7.noarch already installed and latest version
Package perl-PPI-1.215-12.el7.noarch already installed and latest version
Package perl-Env-1.04-2.el7.noarch already installed and latest version
Package perl-B-Lint-1.17-3.el7.noarch already installed and latest version
Package perl-IO-Socket-SSL-1.94-7.el7.noarch already installed and latest version
Package perl-Perl-OSType-1.003-3.el7.noarch already installed and latest version
Package 1:perl-Pod-Escapes-1.04-295.el7.noarch already installed and latest version
Package perl-Text-CSV_XS-1.00-3.el7.x86_64 already installed and latest version
Package perl-IPC-Run-0.92-2.el7.noarch already installed and latest version
Package perl-Test-Vars-0.005-3.el7.noarch already installed and latest version
Package perl-Template-Toolkit-2.24-5.el7.x86_64 already installed and latest version
Package perl-Config-Tiny-2.14-7.el7.noarch already installed and latest version
Package perl-Image-Base-1.07-23.el7.noarch already installed and latest version
Package perl-HTTP-Cookies-6.01-5.el7.noarch already installed and latest version
Package perl-Tk-devel-804.030-6.el7.x86_64 already installed and latest version
Package perl-Pod-Perldoc-3.20-4.el7.noarch already installed and latest version
Package perl-Readonly-XS-1.05-15.el7.x86_64 already installed and latest version
Package 4:perl-macros-5.16.3-295.el7.x86_64 already installed and latest version
Package perl-DBD-SQLite-1.39-3.el7.x86_64 already installed and latest version
Package perl-XML-NamespaceSupport-1.11-10.el7.noarch already installed and latest version
Package perl-String-ShellQuote-1.04-10.el7.noarch already installed and latest version
Package perl-File-Find-Rule-Perl-1.13-2.el7.noarch already installed and latest version
Package 4:perl-devel-5.16.3-295.el7.x86_64 already installed and latest version
Package perl-Text-Unidecode-0.04-20.el7.noarch already installed and latest version
Package perl-Tk-804.030-6.el7.x86_64 already installed and latest version
Package perl-CPAN-1.9800-295.el7.noarch already installed and latest version
Package perl-Mail-SPF-2.8.0-4.el7.noarch already installed and latest version
Package perl-File-Listing-6.04-7.el7.noarch already installed and latest version
Package perl-HTTP-Tiny-0.033-3.el7.noarch already installed and latest version
Package perl-UNIVERSAL-can-1.20120726-3.el7.noarch already installed and latest version
Package perl-Object-Deadly-0.09-15.el7.noarch already installed and latest version
Package perl-Net-LibIDN-0.12-15.el7.x86_64 already installed and latest version
Package perl-Net-Telnet-3.03-19.el7.noarch already installed and latest version
Package perl-Syntax-Highlight-Engine-Kate-0.07-5.el7.noarch already installed and latest version
Package perl-threads-shared-1.43-6.el7.x86_64 already installed and latest version
Package perl-Term-UI-0.36-2.el7.noarch already installed and latest version
Package perl-Test-EOL-1.3-7.el7.noarch already installed and latest version
Package perl-Pod-Plainer-1.03-4.el7.noarch already installed and latest version
Package perl-YAML-Tiny-1.51-6.el7.noarch already installed and latest version
Package perl-Carp-1.26-244.el7.noarch already installed and latest version
Package perl-Exporter-5.68-3.el7.noarch already installed and latest version
Package perl-PadWalker-1.96-3.el7.x86_64 already installed and latest version
Package perl-B-Keywords-1.13-2.el7.noarch already installed and latest version
Package perl-File-Inplace-0.20-8.el7.noarch already installed and latest version
Package perl-XML-SAX-Writer-0.53-4.el7.noarch already installed and latest version
Package perl-Text-Soundex-3.04-4.el7.x86_64 already installed and latest version
Package perl-File-Find-Rule-0.33-5.el7.noarch already installed and latest version
Package perl-Crypt-CBC-2.33-2.el7.noarch already installed and latest version
Package perl-Probe-Perl-0.02-3.el7.noarch already installed and latest version
Package perl-Test-Synopsis-0.06-16.el7.noarch already installed and latest version
Package perl-Pod-POM-0.27-10.el7.noarch already installed and latest version
Package perl-URI-1.60-9.el7.noarch already installed and latest version
Package perl-XML-Grove-0.46alpha-52.el7.noarch already installed and latest version
Package 1:perl-Archive-Extract-0.68-3.el7.noarch already installed and latest version
Package 1:perl-XML-LibXML-2.0018-5.el7.x86_64 already installed and latest version
Package perl-File-Path-2.09-2.el7.noarch already installed and latest version
Package perl-DBD-Pg-tests-2.19.3-4.el7.x86_64 already installed and latest version
Package 1:perl-ExtUtils-ParseXS-3.18-3.el7.noarch already installed and latest version
Package perl-Net-DNS-Nameserver-0.72-6.el7.x86_64 already installed and latest version
Package perl-DBI-1.627-4.el7.x86_64 already installed and latest version
Package perl-UNIVERSAL-isa-1.20120726-3.el7.noarch already installed and latest version
Package perl-Module-Metadata-1.000018-2.el7.noarch already installed and latest version
Package perl-Number-Compare-0.03-6.el7.noarch already installed and latest version
Package perl-Test-Fatal-0.010-5.el7.noarch already installed and latest version
Package 1:perl-TimeDate-2.30-2.el7.noarch already installed and latest version
Package perl-HTML-FormatText-WithLinks-AndTables-0.02-4.el7.noarch already installed and latest version
Package perl-Inline-0.53-4.el7.noarch already installed and latest version
Package perl-File-CheckTree-4.42-3.el7.noarch already installed and latest version
Package perl-Mail-DKIM-0.39-8.el7.noarch already installed and latest version
Package perl-Test-Manifest-1.23-2.el7.noarch already installed and latest version
Package perl-Switch-2.16-7.el7.noarch already installed and latest version
Package perl-Test-MockObject-1.20120301-3.el7.noarch already installed and latest version
Package 1:perl-HTML-Tree-5.03-2.el7.noarch already installed and latest version
Package 3:perl-version-0.99.07-6.el7.x86_64 already installed and latest version
Package perl-PathTools-3.40-5.el7.x86_64 already installed and latest version
Package perl-Text-Glob-0.09-7.el7.noarch already installed and latest version
Package perl-XML-Catalog-1.0.1-1.el7.noarch already installed and latest version
Package perl-Unicode-Map8-0.13-13.el7.x86_64 already installed and latest version
Package 1:perl-Pod-Simple-3.28-4.el7.noarch already installed and latest version
Package perl-FreezeThaw-0.5001-10.el7.noarch already installed and latest version
Package perl-XML-Simple-2.20-5.el7.noarch already installed and latest version
Package perl-Archive-Zip-1.30-11.el7.noarch already installed and latest version
Package perl-PAR-Dist-0.49-2.el7.noarch already installed and latest version
Package perl-Class-Inspector-1.28-2.el7.noarch already installed and latest version
Package perl-Mixin-Linewise-0.004-2.el7.noarch already installed and latest version
Package perl-Test-HasVersion-0.012-7.el7.noarch already installed and latest version
Package perl-Test-Memory-Cycle-1.04-17.el7.noarch already installed and latest version
Package perl-HTML-Format-2.10-7.el7.noarch already installed and latest version
Package perl-ExtUtils-MakeMaker-6.68-3.el7.noarch already installed and latest version
Package perl-Thread-Queue-3.02-2.el7.noarch already installed and latest version
Package perl-Git-1.8.3.1-23.el7_8.noarch already installed and latest version
Package perl-Test-Taint-1.06-5.el7.x86_64 already installed and latest version
Package perl-podlators-2.5.1-3.el7.noarch already installed and latest version
Package perl-WWW-Curl-4.15-13.el7.x86_64 already installed and latest version
Package perl-srpm-macros-1-8.el7.noarch already installed and latest version
Package perl-Filter-1.49-3.el7.x86_64 already installed and latest version
Package perl-XML-XPath-1.13-22.el7.noarch already installed and latest version
Package perl-PCP-LogImport-4.3.2-7.el7_8.x86_64 already installed and latest version
Package 2:perl-DateTime-1.04-6.el7.x86_64 already installed and latest version
Package perl-Inline-Files-0.68-6.el7.noarch already installed and latest version
Package perl-Hook-LexWrap-0.24-2.el7.noarch already installed and latest version
Package perl-Test-Pod-1.48-3.el7.noarch already installed and latest version
Package perl-XML-RegExp-0.04-2.el7.noarch already installed and latest version
Package perl-XML-Dumper-0.81-17.el7.noarch already installed and latest version
Package perl-Module-Implementation-0.06-6.el7.noarch already installed and latest version
Package perl-Test-Simple-0.98-243.el7.noarch already installed and latest version
Package perl-Test-Tester-0.109-3.el7.noarch already installed and latest version
Package perl-File-Remove-1.52-6.el7.noarch already installed and latest version
Package perl-IO-Compress-2.061-2.el7.noarch already installed and latest version
Package perl-XML-SAX-Base-1.08-7.el7.noarch already installed and latest version
Package perl-Test-Perl-Critic-Policy-1.118-5.el7.noarch already installed and latest version
Package perl-Class-Load-XS-0.06-3.el7.x86_64 already installed and latest version
Package perl-Text-WrapI18N-0.06-17.el7.noarch already installed and latest version
Package perl-Authen-SASL-2.15-10.el7.noarch already installed and latest version
Package perl-HTTP-Message-6.06-6.el7.noarch already installed and latest version
Package perl-Socket-2.010-5.el7.x86_64 already installed and latest version
Package perl-Class-Load-0.20-3.el7.noarch already installed and latest version
Package perl-Test-Warn-0.24-6.el7.noarch already installed and latest version
Package perl-Image-Info-1.33-3.el7.noarch already installed and latest version
Package perl-XML-Writer-0.623-3.el7.noarch already installed and latest version
Package perl-PCP-MMV-4.3.2-7.el7_8.x86_64 already installed and latest version
Package perl-TermReadKey-2.30-20.el7.x86_64 already installed and latest version
Package perl-Bit-Vector-7.3-3.el7.x86_64 already installed and latest version
Package perl-Module-Manifest-1.08-10.el7.noarch already installed and latest version
Package perl-DB_File-1.830-6.el7.x86_64 already installed and latest version
Package perl-ExtUtils-Embed-1.30-295.el7.noarch already installed and latest version
Package perl-Class-Data-Inheritable-0.08-14.el7.noarch already installed and latest version
Package perl-GD-2.49-3.el7.x86_64 already installed and latest version
Package perl-Mozilla-CA-20130114-5.el7.noarch already installed and latest version
Package perl-libxml-perl-0.08-19.el7.noarch already installed and latest version
Package perl-String-CRC32-1.4-19.el7.x86_64 already installed and latest version
Package perl-Sys-CPU-0.54-4.el7.x86_64 already installed and latest version
Package perl-PPI-HTML-1.08-4.el7.noarch already installed and latest version
Package perl-Params-Util-1.07-6.el7.x86_64 already installed and latest version
Package 1:perl-Module-Pluggable-4.8-3.el7.noarch already installed and latest version
Package perl-Algorithm-Diff-1.1902-17.el7.noarch already installed and latest version
Package perl-Perl-Critic-More-1.000-9.el7.noarch already installed and latest version
Package perl-Package-DeprecationManager-0.13-7.el7.noarch already installed and latest version
Package perl-libwww-perl-6.05-2.el7.noarch already installed and latest version
Package perl-Module-Install-1.06-4.el7.noarch already installed and latest version
Package 4:perl-tests-5.16.3-295.el7.x86_64 already installed and latest version
Package 1:perl-Module-Load-0.24-3.el7.noarch already installed and latest version
Package perl-Tie-IxHash-1.22-11.el7.noarch already installed and latest version
Package perl-XML-LibXSLT-1.80-4.el7.x86_64 already installed and latest version
Package perl-autodie-2.16-2.el7.noarch already installed and latest version
Package perl-Readonly-1.03-22.el7.noarch already installed and latest version
Package perl-prefork-1.04-11.el7.noarch already installed and latest version
Package 1:perl-Package-Constants-0.02-295.el7.noarch already installed and latest version
Package 1:perl-FCGI-0.74-8.el7.x86_64 already installed and latest version
Package perl-XML-TreeBuilder-4.2-1.el7.noarch already installed and latest version
Package perl-File-pushd-1.005-2.el7.noarch already installed and latest version
Package perl-LWP-Protocol-https-6.04-4.el7.noarch already installed and latest version
Package perl-Test-Harness-3.28-3.el7.noarch already installed and latest version
Package perl-Net-DNS-Resolver-Programmable-0.003-15.el7.noarch already installed and latest version
Package perl-Compress-Raw-Bzip2-2.061-3.el7.x86_64 already installed and latest version
Package 1:perl-ExtUtils-CBuilder-0.28.2.6-295.el7.noarch already installed and latest version
Package perl-Convert-ASN1-0.26-4.el7.noarch already installed and latest version
Package perl-Test-Without-Module-0.17-12.el7.noarch already installed and latest version
Package perl-CPANPLUS-Dist-Build-0.70-3.el7.noarch already installed and latest version
Package perl-Storable-2.45-3.el7.x86_64 already installed and latest version
Package perl-Digest-MD5-2.52-3.el7.x86_64 already installed and latest version
Package perl-Exception-Class-1.37-3.el7.noarch already installed and latest version
Package perl-Test-Perl-Critic-1.02-10.el7.noarch already installed and latest version
Package perl-Pod-Coverage-0.23-3.el7.noarch already installed and latest version
Package perl-LWP-MediaTypes-6.02-2.el7.noarch already installed and latest version
Package perl-CPAN-Meta-YAML-0.008-14.el7.noarch already installed and latest version
Package perl-Try-Tiny-0.12-2.el7.noarch already installed and latest version
Package 1:perl-Locale-Maketext-Simple-0.21-295.el7.noarch already installed and latest version
Package perl-IO-String-1.08-19.el7.noarch already installed and latest version
Package perl-Taint-Runtime-0.03-19.el7.x86_64 already installed and latest version
Package perl-PlRPC-0.2020-14.el7.noarch already installed and latest version
Package perl-gettext-1.05-28.el7.x86_64 already installed and latest version
Package perl-CGI-3.63-4.el7.noarch already installed and latest version
Package perl-Date-Calc-6.3-14.el7.noarch already installed and latest version
Package perl-JSON-PP-2.27202-2.el7.noarch already installed and latest version
Package perl-File-Fetch-0.42-2.el7.noarch already installed and latest version
Package perl-Module-ScanDeps-1.10-3.el7.noarch already installed and latest version
Package perl-Email-Address-1.898-3.el7.noarch already installed and latest version
Package perl-IO-stringy-2.110-22.el7.noarch already installed and latest version
Package perl-Test-DistManifest-1.012-6.el7.noarch already installed and latest version
Package perl-ExtUtils-Install-1.58-295.el7.noarch already installed and latest version
Package perl-GD-Barcode-1.15-15.el7.noarch already installed and latest version
Package perl-Net-HTTP-6.06-2.el7.noarch already installed and latest version
Package perl-Clone-0.34-5.el7.x86_64 already installed and latest version
Package perl-Digest-HMAC-1.03-5.el7.noarch already installed and latest version
Package perl-Business-ISBN-2.06-2.el7.noarch already installed and latest version
Package perl-Sort-Versions-1.5-22.el7.noarch already installed and latest version
Package perl-YAML-Syck-1.27-3.el7.x86_64 already installed and latest version
Package perl-Dist-CheckConflicts-0.06-2.el7.noarch already installed and latest version
Package perl-Crypt-DES-2.05-20.el7.x86_64 already installed and latest version
Package perl-YAML-0.84-5.el7.noarch already installed and latest version
Package perl-IO-Socket-INET6-2.69-5.el7.noarch already installed and latest version
Nothing to do
CPAN is up to date. (2.28)
Cpanel::JSON::XS is up to date. (4.19)
EV is up to date. (4.33)
IO::Socket::Socks is up to date. (0.74)
IO::Socket::SSL is up to date. (2.068)
Net::DNS::Native is up to date. (0.22)
Role::Tiny is up to date. (2.001004)
Removing intermediate container 970ada6a536f
 ---> 1032cb3308bf
Step 5/10 : WORKDIR /app
 ---> Running in 9fa3d4979d17
Removing intermediate container 9fa3d4979d17
 ---> e07c9c8f9c8a
Step 6/10 : RUN rm -rf /app/perlmojo; rm -rf /app/Dockerfile
 ---> Running in 4f4fa1b6eec1
Removing intermediate container 4f4fa1b6eec1
 ---> 04f3801200bc
Step 7/10 : COPY . /app
 ---> 1ceb5e3b443d
Step 8/10 : RUN rm -rf /app/Dockerfile; rm -rf /app/docker-run.sh; rm -rf /app/README.md; chmod +x /app/start_apps.sh;
 ---> Running in 7d71c8a8ecdc
Removing intermediate container 7d71c8a8ecdc
 ---> 2ec09790f126
Step 9/10 : EXPOSE 80 443 22 3306 7310 7311 7312 7313 7314 7315 7316 7317 7318
 ---> Running in 6b7a6a233e95
Removing intermediate container 6b7a6a233e95
 ---> 0441ec67567c
Step 10/10 : CMD ["/usr/sbin/init"]
 ---> Running in 50ecc4fb4dc5
Removing intermediate container 50ecc4fb4dc5
 ---> 99b6a36f16d9
Successfully built 99b6a36f16d9
Successfully tagged a2zdotblue/c7-systemd-perl-mojo-02:latest
Stopping container a2zdocker
a2zdocker
Deleting container a2zdocker
a2zdocker
20cf637f190f422841d0993ce13c4bd9ba7feac5fc45fe28bb8e476dfda24c8f
logging in to a2zdocker
Attempting to create directory /root/perl5
[root@c7 app]# ./start_apps.sh
[Sat Jul 11 21:12:28 2020] [info] Listening at "http://*:7311"
Server available at http://127.0.0.1:7311
[Sat Jul 11 21:12:28 2020] [info] Listening at "https://*:7312?cert=%2Fapp%2Fcerts%2Fcert1.pem&key=%2Fapp%2Fcerts%2Fprivkey1.pem"
Server available at https://127.0.0.1:7312
[root@c7 app]#

[root@c7 app]# wget --spider --tries 1 https://gap.a1z.us
Spider mode enabled. Check if remote file exists.
--2020-07-11 21:15:52--  https://gap.a1z.us/
Resolving gap.a1z.us (gap.a1z.us)... 34.66.69.185
Connecting to gap.a1z.us (gap.a1z.us)|34.66.69.185|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 5489 (5.4K) [text/html]
Remote file exists and could contain further links,
but recursion is disabled -- not retrieving.

[root@c7 app]# wget --spider --tries 1 https://gap.a1z.us:7312
Spider mode enabled. Check if remote file exists.
--2020-07-11 21:16:02--  https://gap.a1z.us:7312/
Resolving gap.a1z.us (gap.a1z.us)... 34.66.69.185
Connecting to gap.a1z.us (gap.a1z.us)|34.66.69.185|:7312... failed: Connection refused.
[root@c7 app]# 

[root@c7 app]# wget --spider --tries 1 --no-check-certificate https://localhost:7312
Spider mode enabled. Check if remote file exists.
--2020-07-11 21:16:30--  https://localhost:7312/
Resolving localhost (localhost)... 127.0.0.1, ::1
Connecting to localhost (localhost)|127.0.0.1|:7312... connected.
WARNING: cannot verify localhost's certificate, issued by ‘/C=US/O=Let's Encrypt/CN=Let's Encrypt Authority X3’:
  Unable to locally verify the issuer's authority.
WARNING: no certificate subject alternative name matches
        requested host name ‘localhost’.
HTTP request sent, awaiting response... 200 OK
Length: 6843 (6.7K) [text/html]
Remote file exists and could contain further links,
but recursion is disabled -- not retrieving.

[root@c7 app]#


