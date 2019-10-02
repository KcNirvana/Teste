.class Lcom/miui/video/global/view/PersonalItemView$1;
.super Ljava/lang/Object;
.source "PersonalItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/global/view/PersonalItemView;->initViewValue(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/global/view/PersonalItemView;


# direct methods
.method constructor <init>(Lcom/miui/video/global/view/PersonalItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/view/PersonalItemView$1;->this$0:Lcom/miui/video/global/view/PersonalItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    iget-object p1, p0, Lcom/miui/video/global/view/PersonalItemView$1;->this$0:Lcom/miui/video/global/view/PersonalItemView;

    invoke-virtual {p1}, Lcom/miui/video/global/view/PersonalItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/miui/video/global/view/PersonalItemView$1;->this$0:Lcom/miui/video/global/view/PersonalItemView;

    invoke-static {p1}, Lcom/miui/video/global/view/PersonalItemView;->access$000(Lcom/miui/video/global/view/PersonalItemView;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    return-void
.end method
