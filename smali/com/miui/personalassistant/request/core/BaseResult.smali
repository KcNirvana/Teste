.class public abstract Lcom/miui/personalassistant/request/core/BaseResult;
.super Ljava/lang/Object;
.source "BaseResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/request/core/BaseResult$State;
    }
.end annotation


# instance fields
.field private mState:Lcom/miui/personalassistant/request/core/BaseResult$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/personalassistant/request/core/BaseResult$State;->OK:Lcom/miui/personalassistant/request/core/BaseResult$State;

    iput-object v0, p0, Lcom/miui/personalassistant/request/core/BaseResult;->mState:Lcom/miui/personalassistant/request/core/BaseResult$State;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lcom/miui/personalassistant/request/core/BaseResult$State;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/request/core/BaseResult;->mState:Lcom/miui/personalassistant/request/core/BaseResult$State;

    return-object v0
.end method

.method public abstract hasData()Z
.end method

.method public setState(Lcom/miui/personalassistant/request/core/BaseResult$State;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/request/core/BaseResult;->mState:Lcom/miui/personalassistant/request/core/BaseResult$State;

    return-void
.end method

.method public abstract shallowClone()Lcom/miui/personalassistant/request/core/BaseResult;
.end method
