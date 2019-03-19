.class Lcom/android/camera/fragment/FragmentBeauty$8;
.super Ljava/lang/Object;
.source "FragmentBeauty.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBeauty;->refreshBottomBeauty(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBeauty;

.field final synthetic val$isClose:Z


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBeauty;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$8;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentBeauty$8;->val$isClose:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty$8;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBeauty$8;->val$isClose:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->-wrap0(Lcom/android/camera/fragment/FragmentBeauty;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
