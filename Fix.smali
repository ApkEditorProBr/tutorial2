.class public Lapkeditor/patch/signature/Fix;
.super Ljava/lang/Object;

.field private static list:Ljava/util/List;
    
.end field

.method static constructor <clinit>()V
    .registers 1

    .prologue
    
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lapkeditor/patch/signature/Fix;->list:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    
    return-void
.end method

.method public static getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .registers 20
    
    .prologue
    
    #Substitua a variável pelo nome do pacote do aplicativo.
    const-string v14, "%PACKAGE_NAME%"

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11
    
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    
    :goto_10
    return-object v14
    
    :cond_11
    :try_start_11
    sget-object v9, Lapkeditor/patch/signature/Fix;->list:Ljava/util/List;
    
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    
    const/4 v5, 0x0
    
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1d
    :goto_1d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_a5
    
    if-nez v5, :cond_9d
    
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    
    array-length v15, v8

    const/4 v14, 0x0

    :goto_2b
    if-lt v14, v15, :cond_c0
    
    const/4 v14, 0x1

    new-array v12, v14, [Landroid/content/pm/Signature;
    
    new-instance v14, Ljava/math/BigInteger;

    #String em formato hexadecimal
    const-string v15, "308206ae06092a864886f70d010702a082069f3082069b020101310b300906052b0e03021a0500300b06092a864886f70d010701a08204ac308204a830820390a003020102020900936eacbe07f201df300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303232393031333334365a170d3335303731373031333334365a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100d6931904dec60b24b1edc762e0d9d8253e3ecd6ceb1de2ff068ca8e8bca8cd6bd3786ea70aa76ce60ebb0f993559ffd93e77a943e7e83d4b64b8e4fea2d3e656f1e267a81bbfb230b578c20443be4c7218b846f5211586f038a14e89c2be387f8ebecf8fcac3da1ee330c9ea93d0a7c3dc4af350220d50080732e0809717ee6a053359e6a694ec2cb3f284a0a466c87a94d83b31093a67372e2f6412c06e6d42f15818dffe0381cc0cd444da6cddc3b82458194801b32564134fbfde98c9287748dbf5676a540d8154c8bbca07b9e247553311c46b9af76fdeeccc8e69e7c8a2d08e782620943f99727d3c04fe72991d99df9bae38a0b2177fa31d5b6afee91f020103a381fc3081f9301d0603551d0e04160414485900563d272c46ae118605a47419ac09ca8c113081c90603551d230481c13081be8014485900563d272c46ae118605a47419ac09ca8c11a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900936eacbe07f201df300c0603551d13040530030101ff300d06092a864886f70d010105050003820101007aaf968ceb50c441055118d0daabaf015b8a765a27a715a2c2b44f221415ffdace03095abfa42df70708726c2069e5c36eddae0400be29452c084bc27eb6a17eac9dbe182c204eb15311f455d824b656dbe4dc2240912d7586fe88951d01a8feb5ae5a4260535df83431052422468c36e22c2a5ef994d61dd7306ae4c9f6951ba3c12f1d1914ddc61f1a62da2df827f603fea5603b2c540dbd7c019c36bab29a4271c117df523cdbc5f3817a49e0efa60cbd7f74177e7a4f193d43f4220772666e4c4d83e1bd5a86087cf34f2dec21e245ca6c2bb016e683638050d2c430eea7c26a1c49d3760a58ab7f1a82cc938b4831384324bd0401fa12163a50570e684d318201ca308201c60201013081a2308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d020900936eacbe07f201df300906052b0e03021a0500300d06092a864886f70d01010105000482010087192612915e2269bf9443625f894695e863f3c55cd913cc54b8388a91e5c4cc2b2810336ea9cf99353c166a561a54fad65634e88ef4e27a2500b44d5091f8db528b2b5034280eece882dcc721fa139bc707d8ee7198882465861bede4e3f835b39f334243fb922ba8a6d1afede6a7c6b0f6ed96a8456d6a947e6931ce6b2d20853567c1885c6fd7fbb68e67af5af91c8956af3a0b0b8adb01fc94f740836ae829128c8c26235629eb71bd4735f486d0fc23ccbce5a9569bec3384e6655403d0e4a59a6509000b1c66d8efdbbed5dfeeced824f59cbba0dd7ba80e926e1718cd1c998fa3c8093b16e8a3c8241026f31c13b3702b1cd8fe3906a0a08a869e489f"

    const/16 v16, 0x10

    invoke-direct/range {v14 .. v16}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2
    
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    
    const-string v14, "X.509"

    invoke-static {v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4
    
    invoke-virtual {v4, v6}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v1, v14, v15

    check-cast v1, Ljava/security/cert/Certificate;
    
    const/4 v14, 0x0

    new-instance v15, Landroid/content/pm/Signature;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v15, v12, v14
    
    const-string v14, "fix"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "new: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/Signature;->hashCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    
    new-instance v14, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    
    :cond_9d
    sput-object v7, Lapkeditor/patch/signature/Fix;->list:Ljava/util/List;
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_9f} :catch_ec
    
    :goto_9f
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto/16 :goto_10
    
    :cond_a5
    :try_start_a5
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/WeakReference;
    
    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;
    
    if-eqz v10, :cond_1d
    
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    
    move-object/from16 v0, p0

    if-ne v10, v0, :cond_be

    const/4 v14, 0x1

    :goto_bb
    or-int/2addr v5, v14

    goto/16 :goto_1d

    :cond_be
    const/4 v14, 0x0

    goto :goto_bb
    
    :cond_c0
    aget-object v11, v8, v14
    
    const-string v16, "fix"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "old: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Landroid/content/pm/Signature;->hashCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_e8} :catch_ec
    
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2b
    
    :catch_ec
    move-exception v3
    
    const-string v14, "fix"

    const-string v15, "error"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9f
.end method
