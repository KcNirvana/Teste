.class public abstract Lcom/alipay/apmobilesecuritysdk/f/a;
.super Ljava/lang/Object;
.source "DevType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/f/a;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/alipay/apmobilesecuritysdk/f/a;->b:I

    return-void
.end method


# virtual methods
.method public abstract a()[B
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/alipay/apmobilesecuritysdk/f/a;->b:I

    return v0
.end method
