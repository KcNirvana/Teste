.class Lcom/miui/video/service/language/LanguageFragment$3;
.super Ljava/lang/Object;
.source "LanguageFragment.java"

# interfaces
.implements Lcom/miui/video/common/feed/IUIRecyclerCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/language/LanguageFragment;->initFindViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/language/LanguageFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/service/language/LanguageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$3;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 1

    const/16 v0, 0x44

    if-ne v0, p2, :cond_0

    new-instance p2, Lcom/miui/video/service/widget/ui/UILanguageItem;

    invoke-direct {p2, p1, p3, p4}, Lcom/miui/video/service/widget/ui/UILanguageItem;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    new-instance p1, Lcom/miui/video/service/language/LanguageFragment$3$1;

    invoke-direct {p1, p0}, Lcom/miui/video/service/language/LanguageFragment$3$1;-><init>(Lcom/miui/video/service/language/LanguageFragment$3;)V

    invoke-virtual {p2, p1}, Lcom/miui/video/service/widget/ui/UILanguageItem;->setUIClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
