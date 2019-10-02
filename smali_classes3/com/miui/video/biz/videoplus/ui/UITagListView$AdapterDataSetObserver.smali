.class public Lcom/miui/video/biz/videoplus/ui/UITagListView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "UITagListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/ui/UITagListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/ui/UITagListView;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/ui/UITagListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/ui/UITagListView$AdapterDataSetObserver;->this$0:Lcom/miui/video/biz/videoplus/ui/UITagListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/ui/UITagListView$AdapterDataSetObserver;->this$0:Lcom/miui/video/biz/videoplus/ui/UITagListView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/ui/UITagListView;->access$100(Lcom/miui/video/biz/videoplus/ui/UITagListView;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    return-void
.end method
