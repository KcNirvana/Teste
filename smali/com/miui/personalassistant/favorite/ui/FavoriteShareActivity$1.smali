.class Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity$1;
.super Ljava/lang/Object;
.source "FavoriteShareActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;->checkCtaAuth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeBtnClick()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;->finish()V

    return-void
.end method

.method public onPositiveBtnClick()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity$1;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteShareActivity;)V

    return-void
.end method
