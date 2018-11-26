.class public Lcom/miui/antivirus/a/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static atH:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/antivirus/a/d;->atH:Landroid/util/ArrayMap;

    sget-object v0, Lcom/miui/antivirus/a/d;->atH:Landroid/util/ArrayMap;

    const-string/jumbo v1, "00001"

    const-string/jumbo v2, "SecurityCenter_home"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/a/d;->atH:Landroid/util/ArrayMap;

    const-string/jumbo v1, "00002"

    const-string/jumbo v2, "CleanMaster_rs"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/antivirus/a/d;->atH:Landroid/util/ArrayMap;

    const-string/jumbo v1, "00003"

    const-string/jumbo v2, "launcher"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static azA(J)V
    .locals 4

    const-string/jumbo v0, "ns_scan_time_foreground"

    long-to-float v1, p0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/miui/antivirus/a/c;->azn(Ljava/lang/String;J)V

    return-void
.end method

.method public static azB(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_update_popup_click"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azC(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_homepage_default_action"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azD(J)V
    .locals 2

    const-string/jumbo v0, "ns_risk_apps_num"

    invoke-static {v0, p0, p1}, Lcom/miui/antivirus/a/c;->azn(Ljava/lang/String;J)V

    return-void
.end method

.method public static azE(J)V
    .locals 2

    const-string/jumbo v0, "ns_apps_num"

    invoke-static {v0, p0, p1}, Lcom/miui/antivirus/a/c;->azn(Ljava/lang/String;J)V

    return-void
.end method

.method public static azq(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "dange_uninstall"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "update_result"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "TENCENT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ns_tencent_update"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "AVL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ns_antiy_update"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "Avast"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ns_avast_update"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static azs(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "dange_click"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azt(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "dange_notify"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azu(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_update_popup2_click"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azv()V
    .locals 1

    const-string/jumbo v0, "ns_start_scan"

    invoke-static {v0}, Lcom/miui/antivirus/a/c;->azo(Ljava/lang/String;)V

    return-void
.end method

.method public static azw(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "scan_action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_scan_action"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azx(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "update_result"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_update_popup_result"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azy(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "enter_way"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "antivirus_enter_way"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static azz(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ns_update_popup1_click"

    invoke-static {v1, v0}, Lcom/miui/antivirus/a/c;->azp(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
