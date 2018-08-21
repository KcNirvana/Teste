.class public Lcom/alipay/android/app/flybird/ui/event/FlybirdMiniEventArgs;
.super Ljava/lang/Object;
.source "FlybirdMiniEventArgs.java"


# instance fields
.field private mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdMiniEventArgs;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    return-void
.end method


# virtual methods
.method public getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdMiniEventArgs;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    if-nez v0, :cond_0

    :cond_0
    return-object v1
.end method

.method public getEventType()Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdMiniEventArgs;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    return-object v0
.end method
