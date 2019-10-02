.class public Lcom/xiaomi/utils/a;
.super Ljava/lang/Object;
.source "AdsBlocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/utils/a$a;,
        Lcom/xiaomi/utils/a$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "iphone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "\u4e09\u661f"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "micromax"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "zte"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "nokia"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "lumia"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "sony ericsson"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "\u534e\u4e3a"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "oneplus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "\u4e00\u52a0"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "blackberry"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "lenovo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "hisense"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "zuk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "tcl"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "nec"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "panasonic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "htc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    const-string v1, "nexus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/xiaomi/utils/a;->b()V

    invoke-direct {p0}, Lcom/xiaomi/utils/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/utils/a;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    return-object p0
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/xiaomi/utils/a;->a(C)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/xiaomi/utils/a;->a(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    if-ge v3, v0, :cond_9

    add-int/lit8 v5, v3, -0x1

    add-int/2addr v3, v2

    const/4 v6, 0x1

    if-ne v5, v4, :cond_4

    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/utils/a;->a(C)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-lt v3, v0, :cond_4

    :cond_3
    return v6

    :cond_4
    if-lt v3, v0, :cond_7

    if-ltz v5, :cond_5

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/utils/a;->a(C)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    if-gez v5, :cond_7

    :cond_6
    return v6

    :cond_7
    if-ltz v5, :cond_8

    if-ge v3, v0, :cond_8

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/utils/a;->a(C)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/utils/a;->a(C)Z

    move-result v4

    if-nez v4, :cond_8

    return v6

    :cond_8
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_9
    return v1

    :cond_a
    :goto_1
    const-string p0, "MiAdBlacklistConfig"

    const-string p1, "containsBlackWord: target or black word is null"

    invoke-static {p0, p1}, Lcom/xiaomi/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a()Lcom/xiaomi/miglobaladsdk/a/a/f;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/utils/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/utils/a$b;-><init>(Lcom/xiaomi/utils/a;Lcom/xiaomi/utils/a$1;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Ljava/util/Observer;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/utils/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/utils/a;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a()Lcom/xiaomi/miglobaladsdk/a/a/f;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/utils/a$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/utils/a$1;-><init>(Lcom/xiaomi/utils/a;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Lcom/xiaomi/miglobaladsdk/a/a/c;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/utils/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/utils/a;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Lcom/xiaomi/utils/a$a;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Lcom/xiaomi/utils/a$a;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/xiaomi/utils/a;->a:Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/xiaomi/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v1, "MiAdBlacklistConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ads: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is blocked by title word: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iput-object v4, p2, Lcom/xiaomi/utils/a$a;->a:Ljava/lang/String;

    :cond_2
    iput-object v4, p0, Lcom/xiaomi/utils/a;->b:Ljava/lang/String;

    return v0

    :cond_3
    invoke-interface {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/xiaomi/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v1, "MiAdBlacklistConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ads: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is blocked by desc word: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    iput-object v4, p2, Lcom/xiaomi/utils/a$a;->a:Ljava/lang/String;

    :cond_4
    iput-object v4, p0, Lcom/xiaomi/utils/a;->b:Ljava/lang/String;

    return v0

    :cond_5
    const-string p1, "MiAdBlacklistConfig"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAdsBlocked->totalTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&threadId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
