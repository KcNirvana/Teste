.class Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$1;
.super Ljava/lang/Object;
.source "ShoppingSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity$1;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingSearchActivity;->finish()V

    return-void
.end method
