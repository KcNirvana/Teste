.class public Lcom/miui/zeus/columbus/ad/enity/AdRequest;
.super Lcom/miui/zeus/columbus/ad/enity/GsonEntityBase;
.source "AdRequest.java"


# static fields
.field private static final DEFAULT_AD_COUNT:I = 0x1

.field private static final GSON_CONTENT_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "AdRequest"


# instance fields
.field public adCount:I
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tagId:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/enity/GsonEntityBase;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/zeus/columbus/ad/enity/AdRequest;->adCount:I

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/enity/AdRequest;
    .locals 2

    const-class v0, Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    const-string v1, "AdRequest"

    invoke-static {v0, p0, v1}, Lcom/miui/zeus/columbus/util/c;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/zeus/columbus/ad/enity/IGsonEntity;

    move-result-object p0

    check-cast p0, Lcom/miui/zeus/columbus/ad/enity/AdRequest;

    return-object p0
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AdRequest"

    return-object v0
.end method
