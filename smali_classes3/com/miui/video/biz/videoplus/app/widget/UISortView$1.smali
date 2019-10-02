.class Lcom/miui/video/biz/videoplus/app/widget/UISortView$1;
.super Ljava/lang/Object;
.source "UISortView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/widget/UISortView;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/widget/UISortView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/widget/UISortView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortView$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortView$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->access$000(Lcom/miui/video/biz/videoplus/app/widget/UISortView;)Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->NONE:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortView$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->access$000(Lcom/miui/video/biz/videoplus/app/widget/UISortView;)Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->DOWN:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortView$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->access$000(Lcom/miui/video/biz/videoplus/app/widget/UISortView;)Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;->UP:Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortView$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-static {p1, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->access$200(Lcom/miui/video/biz/videoplus/app/widget/UISortView;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UISortView$1;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UISortView;

    invoke-static {p1, v1}, Lcom/miui/video/biz/videoplus/app/widget/UISortView;->access$100(Lcom/miui/video/biz/videoplus/app/widget/UISortView;Z)V

    :cond_2
    :goto_1
    return-void
.end method
