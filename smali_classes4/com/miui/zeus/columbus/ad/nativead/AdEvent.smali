.class public Lcom/miui/zeus/columbus/ad/nativead/AdEvent;
.super Ljava/lang/Object;
.source "AdEvent.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AdEvent"

.field public static final TYPE_CLICK:I = 0x1

.field public static final TYPE_VIEW:I


# instance fields
.field public mAdInfo:Lcom/miui/zeus/columbus/ad/enity/IAdInfoEntity;

.field public mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->mType:I

    return-void
.end method

.method public constructor <init>(ILcom/miui/zeus/columbus/ad/enity/IAdInfoEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->mType:I

    iput-object p2, p0, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->mAdInfo:Lcom/miui/zeus/columbus/ad/enity/IAdInfoEntity;

    return-void
.end method

.method public static getEventName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "CLICK"

    return-object p0

    :pswitch_1
    const-string p0, "VIEW"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->mType:I

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->getEventName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/zeus/columbus/ad/nativead/AdEvent;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
