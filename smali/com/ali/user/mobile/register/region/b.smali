.class public Lcom/ali/user/mobile/register/region/b;
.super Ljava/lang/Object;
.source "RegionChoice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/register/region/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ali/user/mobile/register/region/b;


# instance fields
.field private final b:Lcom/ali/user/mobile/h/c;

.field private c:Lcom/ali/user/mobile/register/region/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ali/user/mobile/a/a;->g()Lcom/ali/user/mobile/h/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/region/b;->b:Lcom/ali/user/mobile/h/c;

    return-void
.end method

.method public static a()Lcom/ali/user/mobile/register/region/b;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/register/region/b;->a:Lcom/ali/user/mobile/register/region/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/register/region/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/register/region/b;->a:Lcom/ali/user/mobile/register/region/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/register/region/b;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/region/b;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/register/region/b;->a:Lcom/ali/user/mobile/register/region/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/register/region/b;->a:Lcom/ali/user/mobile/register/region/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/List;)Lcom/ali/user/mobile/register/region/c;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeRes;",
            ">;)",
            "Lcom/ali/user/mobile/register/region/c;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    move v1, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeRes;

    iget-object v9, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeRes;->countryCodeList:Ljava/util/List;

    move v5, v3

    move v4, v1

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_2

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeInfo;

    new-instance v10, Lcom/ali/user/mobile/register/region/RegionInfo;

    invoke-direct {v10}, Lcom/ali/user/mobile/register/region/RegionInfo;-><init>()V

    const-string/jumbo v11, "#"

    iget-object v12, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeRes;->index:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget v11, Lcom/ali/user/mobile/security/ui/R$string;->alipay_choice_region_shortcut:I

    invoke-static {v11}, Lcom/ali/user/mobile/i/d;->a(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/ali/user/mobile/register/region/RegionInfo;->mCharacter:Ljava/lang/String;

    const-string/jumbo v11, "\u2605"

    iput-object v11, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeRes;->index:Ljava/lang/String;

    :goto_2
    if-nez v5, :cond_1

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/ali/user/mobile/register/region/RegionInfo;->isDisplayLetter:Z

    iget-object v11, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeRes;->index:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeRes;->index:Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v11, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeInfo;->country:Ljava/lang/String;

    iput-object v11, v10, Lcom/ali/user/mobile/register/region/RegionInfo;->mRegionName:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeInfo;->countryCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/ali/user/mobile/register/region/RegionInfo;->mRegionNumber:Ljava/lang/String;

    iget-object v11, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeInfo;->domain:Ljava/lang/String;

    iput-object v11, v10, Lcom/ali/user/mobile/register/region/RegionInfo;->mDomain:Ljava/lang/String;

    iget-object v1, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeInfo;->regular:Ljava/lang/String;

    iput-object v1, v10, Lcom/ali/user/mobile/register/region/RegionInfo;->mRegularExpression:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_0
    iget-object v11, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/CountryCodeRes;->index:Ljava/lang/String;

    iput-object v11, v10, Lcom/ali/user/mobile/register/region/RegionInfo;->mCharacter:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iput-boolean v3, v10, Lcom/ali/user/mobile/register/region/RegionInfo;->isDisplayLetter:Z

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v4

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/ali/user/mobile/register/region/c;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/region/c;-><init>()V

    invoke-virtual {v0, v6}, Lcom/ali/user/mobile/register/region/c;->a(Ljava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/ali/user/mobile/register/region/c;->b(Ljava/util/List;)V

    invoke-virtual {v0, v7}, Lcom/ali/user/mobile/register/region/c;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;Lcom/ali/user/mobile/register/region/b$a;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/ali/user/mobile/register/region/b$a;->b()V

    :cond_0
    if-eqz p2, :cond_2

    iget v0, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;->resultStatus:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    iget-object v0, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;->countryCodeResList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;->countryCodeResList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/region/b;->a(Ljava/util/List;)Lcom/ali/user/mobile/register/region/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/region/b;->c:Lcom/ali/user/mobile/register/region/c;

    invoke-direct {p0}, Lcom/ali/user/mobile/register/region/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/ali/user/mobile/register/region/b;->b(Landroid/content/Context;Lcom/ali/user/mobile/register/region/b$a;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p3, :cond_1

    if-eqz p2, :cond_3

    iget v0, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;->resultStatus:I

    iget-object v1, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;->memo:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Lcom/ali/user/mobile/register/region/b$a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    const-string/jumbo v1, "system error"

    invoke-interface {p3, v0, v1}, Lcom/ali/user/mobile/register/region/b$a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lcom/ali/user/mobile/register/region/b$a;)V
    .locals 4

    invoke-static {p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->setRegionCallback(Lcom/ali/user/mobile/register/region/b$a;)V

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    sget v2, Lcom/ali/user/mobile/security/ui/R$anim;->alipay_anim_choice_enter:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/region/b;->c:Lcom/ali/user/mobile/register/region/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/region/b;->c:Lcom/ali/user/mobile/register/region/c;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/region/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ali/user/mobile/register/region/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mrpc/core/RpcException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ali/user/mobile/register/region/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/register/region/b;->b(Landroid/content/Context;Lcom/ali/user/mobile/register/region/b$a;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/ali/user/mobile/register/region/b$a;->a()V

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/region/b;->b:Lcom/ali/user/mobile/h/c;

    invoke-interface {v0}, Lcom/ali/user/mobile/h/c;->a()Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/ali/user/mobile/register/region/b;->a(Landroid/content/Context;Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;Lcom/ali/user/mobile/register/region/b$a;)V

    goto :goto_0
.end method

.method public b()Lcom/ali/user/mobile/register/region/c;
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/register/region/b;->c:Lcom/ali/user/mobile/register/region/c;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ali/user/mobile/register/region/b;->c:Lcom/ali/user/mobile/register/region/c;

    return-object v0
.end method
