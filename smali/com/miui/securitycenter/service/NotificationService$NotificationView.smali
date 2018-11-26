.class public Lcom/miui/securitycenter/service/NotificationService$NotificationView;
.super Landroid/widget/RemoteViews;
.source ""


# instance fields
.field private aXT:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->aXT:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    return-void
.end method

.method private brD()V
    .locals 9

    const v8, 0x7f0a02b3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    const v3, 0x7f0705f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/securitycenter/a;->bse(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/securitycenter/a;->brW(Landroid/content/Context;)J

    move-result-wide v4

    if-eqz v3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-static {v6, v4, v5, v1}, Lcom/miui/common/b/a;->aGS(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const v1, 0x7f0705f5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const v2, 0x7f0a02b2

    const v3, 0x7f020209

    invoke-virtual {p0, v2, v3}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setImageViewResource(II)V

    invoke-virtual {p0, v8, v1}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v8, v0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setTextColor(II)V

    return-void

    :cond_0
    move v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private brE()V
    .locals 10

    const/16 v9, 0x21

    const/4 v1, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-static {}, Lcom/miui/securitycenter/service/NotificationService;->-get0()J

    long-to-float v0, v4

    mul-float/2addr v0, v8

    invoke-static {}, Lcom/miui/securitycenter/service/NotificationService;->-get0()J

    move-result-wide v6

    long-to-float v3, v6

    mul-float/2addr v3, v8

    div-float/2addr v0, v3

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v4, v5}, Lcom/miui/common/b/a;->aGT(J)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    const v4, 0x7f070640

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v1, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v1, v2, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080006

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v1, v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    invoke-virtual {v3, v2, v6, v1, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz v0, :cond_2

    move-object v0, v3

    :goto_2
    const v1, 0x7f0a02ad

    invoke-virtual {p0, v1, v0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0a02ac

    const v1, 0x7f02020a

    invoke-virtual {p0, v0, v1}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setImageViewResource(II)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_2
    move-object v0, v4

    goto :goto_2
.end method

.method private brF(I)V
    .locals 7

    const/16 v6, 0x21

    const/4 v5, 0x0

    const v0, 0x7f0a02af

    const v1, 0x7f020218

    invoke-virtual {p0, v0, v1}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0705fc

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v0, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080006

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string/jumbo v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-le v0, v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {v1, v3, v4, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    move-object v0, v1

    :goto_1
    const v1, 0x7f0a02b0

    invoke-virtual {p0, v1, v0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string/jumbo v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method static synthetic brG(Lcom/miui/securitycenter/service/NotificationService$NotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->brD()V

    return-void
.end method

.method static synthetic brH(Lcom/miui/securitycenter/service/NotificationService$NotificationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->brE()V

    return-void
.end method

.method static synthetic brI(Lcom/miui/securitycenter/service/NotificationService$NotificationView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->brF(I)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 8

    const v7, 0x1020006

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const v0, 0x7f0a02aa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->aXT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {p0, v1, v0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.securitycenter.action.TRACK_NOTIFICATION_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v3, "track_module"

    const-string/jumbo v4, "securitycenter"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v6, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v3, "track_module"

    const-string/jumbo v4, "memory_clean"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0a02ab

    invoke-virtual {p0, v2, v1}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v3, "track_module"

    const-string/jumbo v4, "garbage_clean"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v3, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0a02b1

    invoke-virtual {p0, v2, v1}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v0, "track_module"

    const-string/jumbo v3, "powercenter"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v1, v2, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0a02ae

    invoke-virtual {p0, v1, v0}, Lcom/miui/securitycenter/service/NotificationService$NotificationView;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NotificationService"

    const-string/jumbo v2, "setImageViewBitmap exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
