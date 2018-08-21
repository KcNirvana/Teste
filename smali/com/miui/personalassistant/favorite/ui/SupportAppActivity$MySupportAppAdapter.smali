.class Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$MySupportAppAdapter;
.super Ljava/lang/Object;
.source "SupportAppActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/favorite/adapter/SupportAppAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySupportAppAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$MySupportAppAdapter;->this$0:Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$MySupportAppAdapter;-><init>(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;)V

    return-void
.end method


# virtual methods
.method public onGridItemClick(Lcom/miui/personalassistant/favorite/module/SupportApp;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$MySupportAppAdapter;->this$0:Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;

    invoke-static {v0, p1, p2}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->access$300(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;Lcom/miui/personalassistant/favorite/module/SupportApp;Z)V

    return-void
.end method
