.class final Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$2;
.super Ljava/lang/Object;
.source "LongVideoHomeMainFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->initSearchBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$2;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string p1, "intent_target"

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$2;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;

    invoke-static {v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->access$getVSearchBar$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)Lcom/miui/video/service/widget/ui/UISearchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/service/widget/ui/UISearchBar;->getEditText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "intent_voice_search"

    const/4 v0, 0x1

    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment$initSearchBar$2;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;

    invoke-static {p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;->access$getMContext$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Search"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/framework/uri/CUtils;->openHostLink(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Z

    return-void
.end method
