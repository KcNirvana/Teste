.class public Lcom/miui/securitycenter/service/SpecificDeviceSystemCheckService;
.super Landroid/app/IntentService;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/securitycenter/service/SpecificDeviceSystemCheckService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/securitycenter/service/SpecificDeviceSystemCheckService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/miui/securitycenter/service/SpecificDeviceSystemCheckService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private brK()V
    .locals 3

    invoke-static {p0}, Lcom/miui/common/b/t;->aJq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "https://api.sec.miui.com/config/customizedPhone/chinaMoblie"

    const-string/jumbo v1, "5cdd8678-cddf-4269-ab73-48187445bba3"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/miui/common/network/b;->aLB(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/securitycenter/service/SpecificDeviceSystemCheckService;->brL(Ljava/lang/String;)V

    return-void
.end method

.method private brL(Ljava/lang/String;)V
    .locals 6

    const/4 v5, -0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "error_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "score"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "days"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "used"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v1, v5, :cond_1

    if-ne v2, v5, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-static {v1}, Lcom/miui/securitycenter/a;->bsn(I)V

    invoke-static {v2}, Lcom/miui/securitycenter/a;->bsl(I)V

    invoke-static {v0}, Lcom/miui/securitycenter/a;->bsm(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private brM(I)V
    .locals 5

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/securityscan/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "extra_auto_optimize"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x2712

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/securitycenter/service/SpecificDeviceSystemCheckService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0c003b

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07070b

    invoke-virtual {p0, v2}, Lcom/miui/securitycenter/service/SpecificDeviceSystemCheckService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/miui/common/d/d;->getInstance(Landroid/content/Context;)Lcom/miui/common/d/d;

    move-result-object v3

    const/16 v4, 0x4e21

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/miui/common/d/d;->aLf(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    const-wide/16 v4, -0x1

    invoke-static {}, Lcom/miui/securitycenter/utils/d;->bqH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/utils/d;->bqL()V

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/a;->brZ()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x7de

    if-gt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/securitycenter/a;->bsu(J)V

    invoke-static {v0, v1}, Lcom/miui/securitycenter/a;->bsk(J)V

    :cond_2
    invoke-direct {p0}, Lcom/miui/securitycenter/service/SpecificDeviceSystemCheckService;->brK()V

    invoke-static {}, Lcom/miui/securitycenter/a;->brV()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/miui/securitycenter/a;->brU()I

    move-result v1

    invoke-static {}, Lcom/miui/securitycenter/a;->brT()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/common/b/g;->getFromNowDayInterval(J)I

    move-result v0

    if-ge v0, v1, :cond_3

    return-void

    :cond_3
    invoke-static {v4, v5}, Lcom/miui/securityscan/c;->OH(J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    invoke-static {}, Lcom/miui/securitycenter/a;->brZ()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/common/b/g;->getFromNowDayInterval(J)I

    move-result v0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/securitycenter/a;->bsk(J)V

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/service/SpecificDeviceSystemCheckService;->brM(I)V

    :cond_5
    return-void

    :cond_6
    invoke-static {v2, v3}, Lcom/miui/common/b/g;->getFromNowDayInterval(J)I

    move-result v0

    if-ge v0, v1, :cond_4

    return-void
.end method
