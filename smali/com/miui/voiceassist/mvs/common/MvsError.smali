.class public Lcom/miui/voiceassist/mvs/common/MvsError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERRCODE_ILLEGAL_MSG_FORMAT:I = 0x5

.field public static final ERRCODE_ILLEGAL_REGISTER:I = 0x3

.field public static final ERRCODE_ILLEGAL_RESULT_REQUEST:I = 0x4

.field public static final ERRCODE_NONE:I = 0x1

.field public static final ERRCODE_REMOTE:I = 0x2

.field public static final ERRSTR_ILLEGAL_MSG_FORMAT:Ljava/lang/String; = "Illegal msg format"

.field public static final ERRSTR_ILLEGAL_REGISTER:Ljava/lang/String; = "Illegal register request"

.field public static final ERRSTR_ILLEGAL_RESULT_REQUEST:Ljava/lang/String; = "Illegal result request"

.field public static final ERRSTR_NONE:Ljava/lang/String; = "There is no error."

.field public static final ERRSTR_REMOTE:Ljava/lang/String; = "Remote error, mvs service may be died"

.field private static final TAG:Ljava/lang/String; = "MvsError"


# instance fields
.field final errCode:I

.field final errStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/voiceassist/mvs/common/MvsError;->errCode:I

    invoke-static {p1}, Lcom/miui/voiceassist/mvs/common/MvsError;->codeToStr(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/common/MvsError;->errStr:Ljava/lang/String;

    return-void
.end method

.method public static final codeToStr(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "There is no error."

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "Remote error, mvs service may be died"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "Illegal register request"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "Illegal result request"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "Illegal msg format"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "errCode"

    iget v2, p0, Lcom/miui/voiceassist/mvs/common/MvsError;->errCode:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "errStr"

    iget-object v2, p0, Lcom/miui/voiceassist/mvs/common/MvsError;->errStr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MvsError"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
