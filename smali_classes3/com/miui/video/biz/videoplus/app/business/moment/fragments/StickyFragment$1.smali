.class Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$1;
.super Ljava/lang/Object;
.source "StickyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->start(I)V

    return-void
.end method
