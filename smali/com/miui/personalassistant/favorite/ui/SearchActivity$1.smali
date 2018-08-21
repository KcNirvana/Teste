.class Lcom/miui/personalassistant/favorite/ui/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/ui/SearchActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity$1;->this$0:Lcom/miui/personalassistant/favorite/ui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity$1;->this$0:Lcom/miui/personalassistant/favorite/ui/SearchActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->finish()V

    return-void
.end method
