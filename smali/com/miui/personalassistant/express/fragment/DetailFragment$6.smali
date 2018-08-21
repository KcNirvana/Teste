.class Lcom/miui/personalassistant/express/fragment/DetailFragment$6;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/fragment/DetailFragment;->showChooseCompanyDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

.field final synthetic val$choices:[Ljava/lang/String;

.field final synthetic val$matchCompanies:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/fragment/DetailFragment;[Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$6;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iput-object p2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$6;->val$choices:[Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$6;->val$matchCompanies:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$6;->val$choices:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$6;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$600(Lcom/miui/personalassistant/express/fragment/DetailFragment;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$6;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$500(Lcom/miui/personalassistant/express/fragment/DetailFragment;)Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$6;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$502(Lcom/miui/personalassistant/express/fragment/DetailFragment;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$6;->this$0:Lcom/miui/personalassistant/express/fragment/DetailFragment;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$6;->val$matchCompanies:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/QuerySingleResponse$MatchCompany;->getCompanyCode()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/DetailFragment$6;->val$choices:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-static {v1, v0, v2}, Lcom/miui/personalassistant/express/fragment/DetailFragment;->access$700(Lcom/miui/personalassistant/express/fragment/DetailFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
