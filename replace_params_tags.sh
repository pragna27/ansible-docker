#!/bin/bash

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    --media_name)
    media_name="$2"
    shift # past argument
    shift # past value
    ;;
    --rollup_version)
    rollup_version="$2"
    shift # past argument
    shift # past value
    ;;

    --bomfile)
    bomfile="$2"
    shift # past argument
    shift # past value
    ;;
    --database_ip)
    database_ip="$2"
    shift
    shift
    ;;

    --linux_media_loc)
    linux_media_loc="$2"
    shift
    shift
    ;;

    --linux_upgrade_prefix)
    linux_upgrade_prefix="$2"
    shift
    shift
    ;;

    --linux_upgrade_prev_versions)
    linux_upgrade_prev_versions="$2"
    shift
    shift
    ;;

    --linux_multiver_install_prefix)
    linux_multiver_install_prefix="$2"
    shift
    shift
    ;;

    --linux_multiver_prefix)
    linux_multiver_prefix="$2"
    shift
    shift
    ;;

    --linux_multiver_prev_versions)
    linux_multiver_prev_versions="$2"
    shift
    shift
    ;;

    --linux_multiver_prev_rollup_vers)
    linux_multiver_prev_rollup_vers="$2"
    shift
    shift
    ;;

    --linux_dbs_user)
    linux_dbs_user="$2"
    shift
    shift
    ;;

    --linux_dbs_pass)
    linux_dbs_pass="$2"
    shift
    shift
    ;;

    --zlinux_media_loc)
    zlinux_media_loc="$2"
    shift
    shift
    ;;

    --zlinux_upgrade_prefix)
    zlinux_upgrade_prefix="$2"
    shift
    shift
    ;;

    --zlinux_upgrade_prev_versions)
    zlinux_upgrade_prev_versions="$2"
    shift
    shift
    ;;

    --zlinux_multiver_install_prefix)
    zlinux_multiver_install_prefix="$2"
    shift
    shift
    ;;

    --zlinux_multiver_prefix)
    zlinux_multiver_prefix="$2"
    shift
    shift
    ;;

    --zlinux_multiver_prev_versions)
    zlinux_multiver_prev_versions="$2"
    shift
    shift
    ;;

    --zlinux_multiver_prev_rollup_vers)
    zlinux_multiver_prev_rollup_vers="$2"
    shift
    shift
    ;;

    --zlinux_dbs_user)
    zlinux_dbs_user="$2"
    shift
    shift
    ;;

    --zlinux_dbs_pass)
    zlinux_dbs_pass="$2"
    shift
    shift
    ;;


    --ubuntu_media_loc)
    ubuntu_media_loc="$2"
    shift
    shift
    ;;

    --ubuntu_upgrade_prefix)
    ubuntu_upgrade_prefix="$2"
    shift
    shift
    ;;

    --ubuntu_upgrade_prev_versions)
    ubuntu_upgrade_prev_versions="$2"
    shift
    shift
    ;;

    --ubuntu_multiver_install_prefix)
    ubuntu_multiver_install_prefix="$2"
    shift
    shift
    ;;

    --ubuntu_multiver_prefix)
    ubuntu_multiver_prefix="$2"
    shift
    shift
    ;;

    --ubuntu_multiver_prev_versions)
    ubuntu_multiver_prev_versions="$2"
    shift
    shift
    ;;

    --ubuntu_multiver_prev_rollup_vers)
    ubuntu_multiver_prev_rollup_vers="$2"
    shift
    shift
    ;;

    --ubuntu_dbs_user)
    ubuntu_dbs_user="$2"
    shift
    shift
    ;;

    --ubuntu_dbs_pass)
    ubuntu_dbs_pass="$2"
    shift
    shift
    ;;


    --ss_media_loc)
    ss_media_loc="$2"
    shift
    shift
    ;;

    --ss_upgrade_prefix)
    ss_upgrade_prefix="$2"
    shift
    shift
    ;;

    --ss_upgrade_prev_versions)
    ss_upgrade_prev_versions="$2"
    shift
    shift
    ;;

    --ss_multiver_install_prefix)
    ss_multiver_install_prefix="$2"
    shift
    shift
    ;;

    --ss_multiver_prefix)
    ss_multiver_prefix="$2"
    shift
    shift
    ;;

    --ss_multiver_prev_versions)
    ss_multiver_prev_versions="$2"
    shift
    shift
    ;;

    --ss_multiver_prev_rollup_vers)
    ss_multiver_prev_rollup_vers="$2"
    shift
    shift
    ;;

    --ss_dbs_user)
    ss_dbs_user="$2"
    shift
    shift
    ;;

    --ss_dbs_pass)
    ss_dbs_pass="$2"
    shift
    shift
    ;;

    --so_media_loc)
    so_media_loc="$2"
    shift
    shift
    ;;

    --so_upgrade_prefix)
    so_upgrade_prefix="$2"
    shift
    shift
    ;;

    --so_upgrade_prev_versions)
    so_upgrade_prev_versions="$2"
    shift
    shift
    ;;

    --so_multiver_install_prefix)
    so_multiver_install_prefix="$2"
    shift
    shift
    ;;

    --so_multiver_prefix)
    so_multiver_prefix="$2"
    shift
    shift
    ;;

    --so_multiver_prev_versions)
    so_multiver_prev_versions="$2"
    shift
    shift
    ;;

    --so_multiver_prev_rollup_vers)
    so_multiver_prev_rollup_vers="$2"
    shift
    shift
    ;;

    --so_dbs_user)
    so_dbs_user="$2"
    shift
    shift
    ;;

    --so_dbs_pass)
    so_dbs_pass="$2"
    shift
    shift
    ;;

    --hpia_media_loc)
    hpia_media_loc="$2"
    shift
    shift
    ;;

    --hpia_upgrade_prefix)
    hpia_upgrade_prefix="$2"
    shift
    shift
    ;;

    --hpia_upgrade_prev_versions)
    hpia_upgrade_prev_versions="$2"
    shift
    shift
    ;;

    --hpia_multiver_install_prefix)
    hpia_multiver_install_prefix="$2"
    shift
    shift
    ;;


    --hpia_multiver_prefix)
    hpia_multiver_prefix="$2"
    shift
    shift
    ;;

    --hpia_multiver_prev_versions)
    hpia_multiver_prev_versions="$2"
    shift
    shift
    ;;

    --hpia_multiver_prev_rollup_vers)
    hpia_multiver_prev_rollup_vers="$2"
    shift
    shift
    ;;

    --hpia_dbs_user)
    hpia_dbs_user="$2"
    shift
    shift
    ;;

    --hpia_dbs_pass)
    hpia_dbs_pass="$2"
    shift
    shift
    ;;

    --aix_media_loc)
    aix_media_loc="$2"
    shift
    shift
    ;;

    --aix_upgrade_prefix)
    aix_upgrade_prefix="$2"
    shift
    shift
    ;;

    --aix_upgrade_prev_versions)
    aix_upgrade_prev_versions="$2"
    shift
    shift
    ;;

    --aix_multiver_install_prefix)
    aix_multiver_install_prefix="$2"
    shift
    shift
    ;;


    --aix_multiver_prefix)
    aix_multiver_prefix="$2"
    shift
    shift
    ;;

    --aix_multiver_prev_versions)
    aix_multiver_prev_versions="$2"
    shift
    shift
    ;;

    --aix_multiver_prev_rollup_vers)
    aix_multiver_prev_rollup_vers="$2"
    shift
    shift
    ;;

    --aix_dbs_user)
    aix_dbs_user="$2"
    shift
    shift
    ;;

    --aix_dbs_pass)
    aix_dbs_pass="$2"
    shift
    shift
    ;;

    --default)
    DEFAULT=YES
    shift
    ;;
    *)
    POSITIONAL+=("$1")
    shift
    ;;
esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

#Get github clone directory for each version from rollup_version parameter

MAJORVER=`echo ${rollup_version} | awk -F. '{printf("%02d",$1)}'`
MINORVER=`echo ${rollup_version} | awk -F. '{printf("%02d",$2)}'`
SHORT_VER="${MAJORVER}.${MINORVER}"
SHORTVER_NODOT="${MAJORVER}${MINORVER}"

if [ "${SHORT_VER}" == "15.10" ]; then
   git_clone_dir="15.10.XX"

elif [ "${SHORT_VER}" == "16.10" ]; then
   git_clone_dir="16.00.XX"

elif [ "${SHORT_VER}" == "16.20" ]; then
   git_clone_dir="16.20.XX"
fi

PKGSEDINFO=/tmp/pkg_sed_info-${$}
echo "s|MEDIANAME|${media_name}|g" > ${PKGSEDINFO}
if [ $? != 0 ] ; then
  echo "Error: Unable to write to ${PKGSEDINFO}. Exiting package build."
  exit 1
fi

echo "s|GITCLONEDIR|${git_clone_dir}|g" >> ${PKGSEDINFO}
echo "s|ROLLUPVERSION|${rollup_version}|g" >> ${PKGSEDINFO}
echo "s|BOM|${bomfile}|g" >> ${PKGSEDINFO}

echo "s|DATABASE|${database_ip}|g" >> ${PKGSEDINFO}
echo "s|LINUXMEDIALOC|${linux_media_loc}|g" >> ${PKGSEDINFO}
echo "s|LINUXUPGRADEPREFIX|${linux_upgrade_prefix}|g" >> ${PKGSEDINFO}
echo "s|LINUXUPGRADEPREVVER|${linux_upgrade_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|LINUXMULTIVERINSTPREFIX|${linux_multiver_install_prefix}|g" >> ${PKGSEDINFO}
echo "s|LINUXMULTIPREFIX|${linux_multiver_prefix}|g" >> ${PKGSEDINFO}
echo "s|LINUXMULTIVERPREVVERS|${linux_multiver_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|LINUXMULTIVERPREVROLLUPVERS|${linux_multiver_prev_rollup_vers}|g" >> ${PKGSEDINFO}
echo "s|LINUXDBSUSER|${linux_dbs_user}|g" >> ${PKGSEDINFO}
echo "s|LINUXDBSPASS|${linux_dbs_pass}|g" >> ${PKGSEDINFO}

echo "s|ZLINMEDIALOC|${zlinux_media_loc}|g" >> ${PKGSEDINFO}
echo "s|ZLINUPGRADEPREFIX|${zlinux_upgrade_prefix}|g" >> ${PKGSEDINFO}
echo "s|ZLINUPGRADEPREVVER|${zlinux_upgrade_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|ZLINMULTIVERINSTPREFIX|${zlinux_multiver_install_prefix}|g" >> ${PKGSEDINFO}
echo "s|ZLINMULTIPREFIX|${zlinux_multiver_prefix}|g" >> ${PKGSEDINFO}
echo "s|ZLINMULTIVERPREVVERS|${zlinux_multiver_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|ZLINMULTIVERPREVROLLUPVERS|${zlinux_multiver_prev_rollup_vers}|g" >> ${PKGSEDINFO}
echo "s|ZLINDBSUSER|${zlinux_dbs_user}|g" >> ${PKGSEDINFO}
echo "s|ZLINDBSPASS|${zlinux_dbs_pass}|g" >> ${PKGSEDINFO}

echo "s|UBUNTUMEDIALOC|${ubuntu_media_loc}|g" >> ${PKGSEDINFO}
echo "s|UBUNTUUPGRADEPREFIX|${ubuntu_upgrade_prefix}|g" >> ${PKGSEDINFO}
echo "s|UBUNTUUPGRADEPREVVER|${ubuntu_upgrade_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|UBUNTUMULTIVERINSTPREFIX|${ubuntu_multiver_install_prefix}|g" >> ${PKGSEDINFO}
echo "s|UBUNTUMULTIPREFIX|${ubuntu_multiver_prefix}|g" >> ${PKGSEDINFO}
echo "s|UBUNTUMULTIVERPREVVERS|${ubuntu_multiver_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|UBUNTUMULTIVERPREVROLLUPVERS|${ubuntu_multiver_prev_rollup_vers}|g" >> ${PKGSEDINFO}
echo "s|UBUNTUDBSUSER|${ubuntu_dbs_user}|g" >> ${PKGSEDINFO}
echo "s|UBUNTUDBSPASS|${ubuntu_dbs_pass}|g" >> ${PKGSEDINFO}

echo "s|SSMEDIALOC|${ss_media_loc}|g" >> ${PKGSEDINFO}
echo "s|SSUPGRADEPREFIX|${ss_upgrade_prefix}|g" >> ${PKGSEDINFO}
echo "s|SSUPGRADEPREVVER|${ss_upgrade_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|SSMULTIVERINSTPREFIX|${ss_multiver_install_prefix}|g" >> ${PKGSEDINFO}
echo "s|SSMULTIPREFIX|${ss_multiver_prefix}|g" >> ${PKGSEDINFO}
echo "s|SSMULTIVERPREVVERS|${ss_multiver_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|SSMULTIVERPREVROLLUPVERS|${ss_multiver_prev_rollup_vers}|g" >> ${PKGSEDINFO}
echo "s|SSDBSUSER|${ss_dbs_user}|g" >> ${PKGSEDINFO}
echo "s|SSDBSPASS|${ss_dbs_pass}|g" >> ${PKGSEDINFO}

echo "s|SOMEDIALOC|${so_media_loc}|g" >> ${PKGSEDINFO}
echo "s|SOUPGRADEPREFIX|${so_upgrade_prefix}|g" >> ${PKGSEDINFO}
echo "s|SOUPGRADEPREVVER|${so_upgrade_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|SOMULTIVERINSTPREFIX|${so_multiver_install_prefix}|g" >> ${PKGSEDINFO}
echo "s|SOMULTIPREFIX|${so_multiver_prefix}|g" >> ${PKGSEDINFO}
echo "s|SOMULTIVERPREVVERS|${so_multiver_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|SOMULTIVERPREVROLLUPVERS|${so_multiver_prev_rollup_vers}|g" >> ${PKGSEDINFO}
echo "s|SODBSUSER|${so_dbs_user}|g" >> ${PKGSEDINFO}
echo "s|SODBSPASS|${so_dbs_pass}|g" >> ${PKGSEDINFO}

echo "s|HPIAMEDIALOC|${hpia_media_loc}|g" >> ${PKGSEDINFO}
echo "s|HPIAUPGRADEPREFIX|${hpia_upgrade_prefix}|g" >> ${PKGSEDINFO}
echo "s|HPIAUPGRADEPREVVER|${hpia_upgrade_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|HPIAMULTIVERINSTPREFIX|${hpia_multiver_install_prefix}|g" >> ${PKGSEDINFO}
echo "s|HPIAMULTIPREFIX|${hpia_multiver_prefix}|g" >> ${PKGSEDINFO}
echo "s|HPIAMULTIVERPREVVERS|${hpia_multiver_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|HPIAMULTIVERPREVROLLUPVERS|${hpia_multiver_prev_rollup_vers}|g" >> ${PKGSEDINFO}
echo "s|HPIADBSUSER|${hpia_dbs_user}|g" >> ${PKGSEDINFO}
echo "s|HPIADBSPASS|${hpia_dbs_pass}|g" >> ${PKGSEDINFO}

echo "s|AIXMEDIALOC|${aix_media_loc}|g" >> ${PKGSEDINFO}
echo "s|AIXUPGRADEPREFIX|${aix_upgrade_prefix}|g" >> ${PKGSEDINFO}
echo "s|AIXUPGRADEPREVVER|${aix_upgrade_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|AIXMULTIVERINSTPREFIX|${aix_multiver_install_prefix}|g" >> ${PKGSEDINFO}
echo "s|AIXMULTIPREFIX|${aix_multiver_prefix}|g" >> ${PKGSEDINFO}
echo "s|AIXMULTIVERPREVVERS|${aix_multiver_prev_versions}|g" >> ${PKGSEDINFO}
echo "s|AIXMULTIVERPREVROLLUPVERS|${aix_multiver_prev_rollup_vers}|g" >> ${PKGSEDINFO}
echo "s|AIXDBSUSER|${aix_dbs_user}|g" >> ${PKGSEDINFO}
echo "s|AIXDBSPASS|${aix_dbs_pass}|g" >> ${PKGSEDINFO}


sed -f ${PKGSEDINFO} < params/params_tags.yml > params/final_param.yml
rm -rf $PKGSEDINFO
