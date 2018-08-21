.class public Lcom/miui/home/launcher/assistant/util/CardStatusUtil;
.super Ljava/lang/Object;
.source "CardStatusUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CardStatusUtil"

.field private static final mDefaultCloseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsCTAOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->sIsCTAOpen:Z

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/Steps;->supportStepsProvider()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_step"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_express_support_other_app"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_express_auth_phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_didi_trip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_map"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_basketball"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_football"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_stock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_payment"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    const-string/jumbo v1, "key_upgrade"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCTACardStatus(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->sIsCTAOpen:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "key_cta"

    invoke-static {p0, v0}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->sIsCTAOpen:Z

    goto :goto_0
.end method

.method public static getCardStatus(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    sget-object v2, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->mDefaultCloseList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/miui/home/launcher/assistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    move v3, v4

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public static setCTACardStatus(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_cta"

    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-boolean p1, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->sIsCTAOpen:Z

    return-void
.end method

.method public static setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/assistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method
