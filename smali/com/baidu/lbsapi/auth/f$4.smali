.class Lcom/baidu/lbsapi/auth/f$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/lbsapi/auth/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/lbsapi/auth/f;->a(ZLjava/lang/String;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/lbsapi/auth/d$a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/lbsapi/auth/f;


# direct methods
.method constructor <init>(Lcom/baidu/lbsapi/auth/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/f$4;->b:Lcom/baidu/lbsapi/auth/f;

    iput-object p2, p0, Lcom/baidu/lbsapi/auth/f$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/lbsapi/auth/f$4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/lbsapi/auth/f$4;->b:Lcom/baidu/lbsapi/auth/f;

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/f$4;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/baidu/lbsapi/auth/f;->a(Lcom/baidu/lbsapi/auth/f;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
