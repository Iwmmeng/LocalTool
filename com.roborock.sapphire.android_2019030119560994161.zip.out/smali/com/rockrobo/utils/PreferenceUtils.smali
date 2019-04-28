.class public Lcom/rockrobo/utils/PreferenceUtils;
.super Ljava/lang/Object;


# static fields
.field public static final AGREE_USER_ACCESS_PROTOCOL_PREF_KEY:Ljava/lang/String; = "user_access_protocol_"

.field public static final AGREE_USER_IMPROVE_PLAN_PREF_KEY:Ljava/lang/String; = "user_improve_plan_"

.field private static final IMPROVE_PLAN_AGREED_PREF_KEY:Ljava/lang/String; = "improve_plan_agreed_"

.field private static final LICENSE_AGREED_PREF_KEY:Ljava/lang/String; = "license_agreed_"

.field public static final LICENSE_CONTENT_PREF_KEY_PREFIX:Ljava/lang/String; = "user_access_protocol_content_key_"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MOP_MODE_KEY:Ljava/lang/String; = "mop_mode_key_"

.field public static final PRIVACY_POLICY_CONTENT_PREF_KEY_PREFIX:Ljava/lang/String; = "privacy_policy_content_pref_key_"

.field public static final RR_SHARED_PREF_KEY:Ljava/lang/String; = "rockrobo"

.field public static final TIME_ZONE_SAVE_KEY_PREFIX:Ljava/lang/String; = "time_zone_save_key_"

.field private static final USER_COUNTRY_PREF_KEY_PREFIX:Ljava/lang/String; = "sapphire.user_country.pref."

.field public static final USER_IMPROVE_PLAN_UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/utils/PreferenceUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/utils/PreferenceUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAgreeUserImprovePlanPrefKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;
    .locals 1

    const-string v0, "user_improve_plan_"

    invoke-static {v0, p0}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildImprovePlanAgreedPrefKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;
    .locals 1

    const-string v0, "improve_plan_agreed_"

    invoke-static {v0, p0}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildLicenceAgreePrefKey(Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "license_agreed_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildMopModePreferenceKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;
    .locals 1

    const-string v0, "mop_mode_key_"

    invoke-static {v0, p0}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildMopModePromptPreferenceKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;
    .locals 1

    const-string v0, "mop_mode_prompt_key_"

    invoke-static {v0, p0}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildPrefKeyAccountId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/rockrobo/xmplugin/Device;->getDid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildTimeZoneSaveKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;
    .locals 1

    const-string v0, "time_zone_save_key_"

    invoke-static {v0, p0}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildUserCountryPrefKey(Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sapphire.user_country.pref."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/rockrobo/utils/PreferenceUtils;->buildPrefKeyDid(Ljava/lang/String;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static clearAll(Landroid/content/Context;)V
    .locals 2

    const-string v0, "rockrobo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static getIntPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    const-string v0, "rockrobo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getMopModePreference(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)I
    .locals 1

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildMopModePreferenceKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/rockrobo/utils/PreferenceUtils;->getIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "rockrobo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static hasPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "rockrobo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasShownMopModePromptDialog(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)Z
    .locals 0

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildMopModePromptPreferenceKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->hasPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static readLicenseAgreeStatus(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/rockrobo/utils/PreferenceUtils;->buildLicenceAgreePrefKey(Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->hasPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static readUserImprovePlanStatus(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildAgreeUserImprovePlanPrefKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->hasPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeLicenseAgreeStatus(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/rockrobo/utils/PreferenceUtils;->buildLicenceAgreePrefKey(Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static removeLicenseRelatedPrefs(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/rockrobo/utils/PreferenceUtils;->buildUserCountryPrefKey(Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rockrobo/utils/PreferenceUtils;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/rockrobo/utils/PreferenceUtils;->buildLicenceAgreePrefKey(Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/rockrobo/utils/PreferenceUtils;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildImprovePlanAgreedPrefKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static removePreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "rockrobo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static removeUserImprovePlanStatus(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)V
    .locals 0

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildAgreeUserImprovePlanPrefKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rockrobo/utils/PreferenceUtils;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "rockrobo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveLicenseAgreeStatus(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/rockrobo/utils/PreferenceUtils;->buildLicenceAgreePrefKey(Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveMopModePreference(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;I)V
    .locals 0

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildMopModePreferenceKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/rockrobo/utils/PreferenceUtils;->saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static saveMopModePromptPreference(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;)V
    .locals 1

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildMopModePromptPreferenceKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/rockrobo/utils/PreferenceUtils;->saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "rockrobo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveUserImprovePlanStatus(Landroid/content/Context;Lcom/rockrobo/xmplugin/Device;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/rockrobo/utils/PreferenceUtils;->buildAgreeUserImprovePlanPrefKey(Lcom/rockrobo/xmplugin/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/rockrobo/utils/PreferenceUtils;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
