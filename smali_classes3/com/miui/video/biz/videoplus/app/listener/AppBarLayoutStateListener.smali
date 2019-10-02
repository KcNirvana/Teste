.class public abstract Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;
.super Ljava/lang/Object;
.source "AppBarLayoutStateListener.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppBarChangeListener"


# instance fields
.field private mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->RUNNING:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    return-void
.end method


# virtual methods
.method public getState()Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    return-object v0
.end method

.method public abstract onCollapsed()V
.end method

.method public abstract onExpand()V
.end method

.method public abstract onOffsetChange(IF)V
.end method

.method public final onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    sget-object p2, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->EXPANDED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    if-eq p1, p2, :cond_2

    sget-object p1, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->EXPANDED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;->onExpand()V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    sget-object p2, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->COLLAPSED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    if-eq p1, p2, :cond_2

    sget-object p1, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->COLLAPSED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;->onCollapsed()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->RUNNING:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;->mCurrentState:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener;->onOffsetChange(IF)V

    :cond_2
    :goto_0
    return-void
.end method
