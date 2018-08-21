.class final Lss/ss/gK/g$1;
.super Lss/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lss/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lss/s;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()LgK/e;
    .locals 1

    new-instance v0, LgK/c;

    invoke-direct {v0}, LgK/c;-><init>()V

    return-object v0
.end method
