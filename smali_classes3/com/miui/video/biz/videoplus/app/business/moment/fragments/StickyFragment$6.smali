.class Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$6;
.super Ljava/lang/Object;
.source "StickyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->loadData()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$6;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$700(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->LOADING_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;)V

    return-void
.end method
