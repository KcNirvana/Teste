.class Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$1;
.super Ljava/lang/Object;
.source "AlipayXspaceResolverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$1;->this$0:Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$1;->this$0:Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->finish()V

    return-void
.end method
