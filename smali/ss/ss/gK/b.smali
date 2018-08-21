.class public final Lss/ss/gK/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ss/gK/b$a;
    }
.end annotation


# instance fields
.field public final a:Lss/w;

.field public final b:Lss/y;


# direct methods
.method private constructor <init>(Lss/w;Lss/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/gK/b;->a:Lss/w;

    iput-object p2, p0, Lss/ss/gK/b;->b:Lss/y;

    return-void
.end method

.method synthetic constructor <init>(Lss/w;Lss/y;Lss/ss/gK/b$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lss/ss/gK/b;-><init>(Lss/w;Lss/y;)V

    return-void
.end method

.method public static a(Lss/y;Lss/w;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lss/y;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const-string/jumbo v1, "Expires"

    invoke-virtual {p0, v1}, Lss/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lss/y;->h()Lss/d;

    move-result-object v1

    invoke-virtual {v1}, Lss/d;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lss/y;->h()Lss/d;

    move-result-object v1

    invoke-virtual {v1}, Lss/d;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lss/y;->h()Lss/d;

    move-result-object v1

    invoke-virtual {v1}, Lss/d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lss/y;->h()Lss/d;

    move-result-object v1

    invoke-virtual {v1}, Lss/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lss/w;->f()Lss/d;

    move-result-object v1

    invoke-virtual {v1}, Lss/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
