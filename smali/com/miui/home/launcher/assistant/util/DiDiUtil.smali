.class public Lcom/miui/home/launcher/assistant/util/DiDiUtil;
.super Ljava/lang/Object;
.source "DiDiUtil.java"


# static fields
.field public static final DIDI_BIZ_FAST:I = 0x3

.field public static final DIDI_BIZ_KEY:Ljava/lang/String; = "didi_biz_key"

.field private static final DIDI_BIZ_PROFESSION:I = 0x2

.field public static final DIDI_BIZ_TAXI:I = 0x1

.field private static final DIDI_END_INPUT:Ljava/lang/String; = "didi_end_input"

.field public static final DIDI_MAPTYPE:Ljava/lang/String; = "soso"

.field private static final DIDI_PACKAGENAME:Ljava/lang/String; = "com.sdu.didi.psnger"

.field private static final DIDI_START_INPUT:Ljava/lang/String; = "didi_start_input"

.field private static final DIDI_URI_FAST:Ljava/lang/String; = "flash"

.field private static final DIDI_URI_PROFESSION:Ljava/lang/String; = "premium"

.field private static final DIDI_URI_TAXI:Ljava/lang/String; = "dache"

.field public static final INTENT_ACTION_INSTALL_DIALOG:Ljava/lang/String; = "com.miui.personalassistant.QUICKSTART_INSTALL_DIALOG"

.field public static volatile sInstance:Lcom/miui/home/launcher/assistant/util/DiDiUtil;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method private doMiStatisItemClick(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_item_click_didi"

    const-string/jumbo v2, "16"

    const-string/jumbo v3, "DiDiCardView"

    const-string/jumbo v5, "0"

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/util/DiDiUtil;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->sInstance:Lcom/miui/home/launcher/assistant/util/DiDiUtil;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/util/DiDiUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->sInstance:Lcom/miui/home/launcher/assistant/util/DiDiUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->sInstance:Lcom/miui/home/launcher/assistant/util/DiDiUtil;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->sInstance:Lcom/miui/home/launcher/assistant/util/DiDiUtil;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public showDiDi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "didi_biz_key"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/home/launcher/assistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v2

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.sdu.didi.psnger"

    invoke-static {v4, v5}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v1, "flash"

    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.sdu.didi.psnger"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OneTravel://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/sendorder?slat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&slon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&dlat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&dlon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&source=gs-openapi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_app"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->doMiStatisItemClick(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v1, "flash"

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v1, "premium"

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v1, "dache"

    goto/16 :goto_0

    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->mContext:Landroid/content/Context;

    const v5, 0x1b0b0204

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->mContext:Landroid/content/Context;

    const v9, 0x1b0b0507

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->mContext:Landroid/content/Context;

    const v6, 0x1b0b01c8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.sdu.didi.psnger"

    invoke-virtual {p0, v4, v5, v6}, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->showDownloadDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showDownloadDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant.QUICKSTART_INSTALL_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/DiDiUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
