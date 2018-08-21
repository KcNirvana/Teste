.class public Lcom/miui/personalassistant/shopping/util/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final PACKAGE_JINGDONG:Ljava/lang/String; = "com.jingdong.app.mall"

.field public static final PACKAGE_MISHOP:Ljava/lang/String; = "com.xiaomi.shop"

.field public static final PACKAGE_TAOBAO:Ljava/lang/String; = "com.taobao.taobao"

.field public static final PACKAGE_TMALL:Ljava/lang/String; = "com.tmall.wireless"

.field public static final SHOPPING_PACKAGES:[Ljava/lang/String;

.field public static final TIMEOUT_DEFAULT:I = 0xbb8


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.taobao.taobao"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.tmall.wireless"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.jingdong.app.mall"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.xiaomi.shop"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/personalassistant/shopping/util/Constant;->SHOPPING_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
