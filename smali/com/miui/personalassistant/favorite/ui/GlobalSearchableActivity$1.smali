.class Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$1;
.super Ljava/lang/Object;
.source "GlobalSearchableActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->checkCTA(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$1;->this$0:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeBtnClick()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$1;->val$cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$1;->this$0:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->finish()V

    return-void
.end method

.method public onPositiveBtnClick()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$1;->this$0:Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity$1;->val$cursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;->access$100(Lcom/miui/personalassistant/favorite/ui/GlobalSearchableActivity;Landroid/database/Cursor;)V

    return-void
.end method
