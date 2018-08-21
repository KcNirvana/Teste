.class Lcom/ali/user/mobile/biz/i;
.super Ljava/lang/Object;
.source "LogoutServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/ui/widget/d$b;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/d;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/ali/user/mobile/biz/LogoutServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/biz/LogoutServiceImpl;Lcom/ali/user/mobile/ui/widget/d;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/biz/i;->c:Lcom/ali/user/mobile/biz/LogoutServiceImpl;

    iput-object p2, p0, Lcom/ali/user/mobile/biz/i;->a:Lcom/ali/user/mobile/ui/widget/d;

    iput-object p3, p0, Lcom/ali/user/mobile/biz/i;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/biz/i;->a:Lcom/ali/user/mobile/ui/widget/d;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/d;->dismiss()V

    iget-object v1, p0, Lcom/ali/user/mobile/biz/i;->c:Lcom/ali/user/mobile/biz/LogoutServiceImpl;

    iget-object v0, p0, Lcom/ali/user/mobile/biz/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->access$100(Lcom/ali/user/mobile/biz/LogoutServiceImpl;Ljava/lang/String;)V

    return-void
.end method
