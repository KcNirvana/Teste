.class public Lcom/alipay/mobile/common/Sdk$a;
.super Ljava/lang/Object;
.source "Sdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/Sdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Z

.field private static b:Landroid/app/Application;

.field private static c:Lcom/alipay/mobile/common/common/a;

.field private static d:Lcom/alipay/mobile/common/b;

.field private static e:Lcom/alipay/mobile/common/c;


# direct methods
.method public static a(Landroid/app/Application;)V
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/common/task/c;->a()V

    sget-object v0, Lcom/alipay/mobile/common/Sdk$a;->b:Landroid/app/Application;

    if-nez v0, :cond_0

    sput-object p0, Lcom/alipay/mobile/common/Sdk$a;->b:Landroid/app/Application;

    :cond_0
    return-void
.end method

.method public static a(Lcom/alipay/mobile/common/b;)V
    .locals 0

    sput-object p0, Lcom/alipay/mobile/common/Sdk$a;->d:Lcom/alipay/mobile/common/b;

    return-void
.end method

.method public static a(Lcom/alipay/mobile/common/c;)V
    .locals 0

    sput-object p0, Lcom/alipay/mobile/common/Sdk$a;->e:Lcom/alipay/mobile/common/c;

    return-void
.end method

.method public static a(Lcom/alipay/mobile/common/common/a;)V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/Sdk$a;->c:Lcom/alipay/mobile/common/common/a;

    if-nez v0, :cond_0

    sput-object p0, Lcom/alipay/mobile/common/Sdk$a;->c:Lcom/alipay/mobile/common/common/a;

    :cond_0
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/common/Sdk$a;->a:Z

    return v0
.end method

.method static synthetic b()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/Sdk$a;->b:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic b(Landroid/app/Application;)Landroid/app/Application;
    .locals 0

    sput-object p0, Lcom/alipay/mobile/common/Sdk$a;->b:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic c()Lcom/alipay/mobile/common/common/a;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/Sdk$a;->c:Lcom/alipay/mobile/common/common/a;

    return-object v0
.end method

.method static synthetic d()Lcom/alipay/mobile/common/b;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/Sdk$a;->d:Lcom/alipay/mobile/common/b;

    return-object v0
.end method

.method static synthetic e()Lcom/alipay/mobile/common/c;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/Sdk$a;->e:Lcom/alipay/mobile/common/c;

    return-object v0
.end method
