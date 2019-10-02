.class Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$4;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
