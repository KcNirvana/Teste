.class public abstract Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;
.super Ljava/lang/Object;
.source "FlybirdWindowData.java"


# static fields
.field public static final FRAME_DIALOG:I = 0x3

.field public static final FRAME_FLYBIRD:I = 0x1

.field public static final FRAME_PAGE:I = 0xb

.field public static final FRAME_TOAST:I = 0x2

.field public static final FRAME_TRANSITION:I


# instance fields
.field private mBusinessTemplete:Lcom/alipay/android/app/json/JSONObject;

.field private mDismissTime:I

.field private mIsBack:Z

.field private mIsKeepPre:Z

.field private mIsShowOneTime:Z

.field private mIsShown:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsShowOneTime:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsKeepPre:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsShown:I

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsBack:Z

    return-void
.end method


# virtual methods
.method public getBusinessTemplete()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mBusinessTemplete:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public getDismissTime()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mDismissTime:I

    return v0
.end method

.method public getIsShown()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsShown:I

    return v0
.end method

.method public abstract getWindowName()Ljava/lang/String;
.end method

.method public abstract getWindowType()I
.end method

.method public isBack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsBack:Z

    return v0
.end method

.method public abstract isDefaultWindow()Z
.end method

.method public isKeepPre()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsKeepPre:Z

    return v0
.end method

.method public isShowOneTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsShowOneTime:Z

    return v0
.end method

.method public parseDismissTime(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mDismissTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mDismissTime:I

    goto :goto_0
.end method

.method public setBusinessTemplete(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mBusinessTemplete:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method

.method public setIsBack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsBack:Z

    return-void
.end method

.method public setIsKeepPre(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsKeepPre:Z

    return-void
.end method

.method public setIsShowOneTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsShowOneTime:Z

    return-void
.end method

.method public setIsShown()V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsShown:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowData;->mIsShown:I

    return-void
.end method
