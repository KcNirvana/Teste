.class Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout$1;
.super Ljava/lang/Object;
.source "WindowInsetsFrameLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/WindowInsetsFrameLayout;->requestApplyInsets()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
