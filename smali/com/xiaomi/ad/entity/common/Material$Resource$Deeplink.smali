.class public Lcom/xiaomi/ad/entity/common/Material$Resource$Deeplink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/entity/common/Material$Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Deeplink"
.end annotation


# instance fields
.field private final deeplinkPackageName:Ljava/lang/String;

.field private final deeplinkUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/ad/entity/common/Material$Resource$Deeplink;->deeplinkPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/ad/entity/common/Material$Resource$Deeplink;->deeplinkUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/entity/common/Material$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/ad/entity/common/Material$Resource$Deeplink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDeeplinkPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource$Deeplink;->deeplinkPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeeplinkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/common/Material$Resource$Deeplink;->deeplinkUrl:Ljava/lang/String;

    return-object v0
.end method
