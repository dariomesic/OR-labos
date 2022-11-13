PGDMP         7            	    z           OR    15.0    15.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    OR    DATABASE     z   CREATE DATABASE "OR" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Croatian_Croatia.1250';
    DROP DATABASE "OR";
                postgres    false            �            1259    16501    kvizevi    TABLE     �  CREATE TABLE public.kvizevi (
    id_kviz integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    popularity character varying(255),
    duration character varying(255),
    team_number character varying(255),
    theme character varying(255),
    "time" character varying(255) NOT NULL,
    rewards character varying(255),
    registrarion_fee character varying(255),
    contact character varying(255),
    picture text,
    max_teams character varying(255)
);
    DROP TABLE public.kvizevi;
       public         heap    postgres    false            �            1259    16498    lokacije_kvizeva    TABLE     �   CREATE TABLE public.lokacije_kvizeva (
    id_kviz integer NOT NULL,
    id_lokacije integer NOT NULL,
    naziv character varying(255),
    adresa character varying
);
 $   DROP TABLE public.lokacije_kvizeva;
       public         heap    postgres    false            �          0    16501    kvizevi 
   TABLE DATA           �   COPY public.kvizevi (id_kviz, name, description, popularity, duration, team_number, theme, "time", rewards, registrarion_fee, contact, picture, max_teams) FROM stdin;
    public          postgres    false    215   @       �          0    16498    lokacije_kvizeva 
   TABLE DATA           O   COPY public.lokacije_kvizeva (id_kviz, id_lokacije, naziv, adresa) FROM stdin;
    public          postgres    false    214   �       l           2606    16507    kvizevi pk_kvizevi 
   CONSTRAINT     U   ALTER TABLE ONLY public.kvizevi
    ADD CONSTRAINT pk_kvizevi PRIMARY KEY (id_kviz);
 <   ALTER TABLE ONLY public.kvizevi DROP CONSTRAINT pk_kvizevi;
       public            postgres    false    215            j           2606    16519    lokacije_kvizeva pk_lokacije 
   CONSTRAINT     l   ALTER TABLE ONLY public.lokacije_kvizeva
    ADD CONSTRAINT pk_lokacije PRIMARY KEY (id_kviz, id_lokacije);
 F   ALTER TABLE ONLY public.lokacije_kvizeva DROP CONSTRAINT pk_lokacije;
       public            postgres    false    214    214            h           1259    16515    fki_fk_lokKviz    INDEX     P   CREATE INDEX "fki_fk_lokKviz" ON public.lokacije_kvizeva USING btree (id_kviz);
 $   DROP INDEX public."fki_fk_lokKviz";
       public            postgres    false    214            m           2606    16510    lokacije_kvizeva fk_lokKviz    FK CONSTRAINT     �   ALTER TABLE ONLY public.lokacije_kvizeva
    ADD CONSTRAINT "fk_lokKviz" FOREIGN KEY (id_kviz) REFERENCES public.kvizevi(id_kviz) NOT VALID;
 G   ALTER TABLE ONLY public.lokacije_kvizeva DROP CONSTRAINT "fk_lokKviz";
       public          postgres    false    3180    215    214            �   n  x�Ř[��X�����)����p8\J
�l����VK�0`0`n��@uK]=�H�O���Ƒ�̈TEe���̐��������U4I�5҄��n��J�����1=0�2���4uS�������q�b���F�~��"��ުdiS�Ibwo��q�O�[i��c2�c����\úg:�`%ap��LX�2�@7��{��?�$��*��&
�0	���}ݗ;��a�U�4��_?~L�0H� }��FU�aЇ��0���J?�S� �T又Ä�%��9�"�񂄈�XAyx+���E��^���/z`�M+}0��#���c�k>JF;r}ke.�X���l�ckc^�2�d������V�1��U�'$��TD�6;�@?m�ɱuq.+�oͫ~�����^�Y�S��t�pj�+���h��>�,�/�k���Y'�C<����5wͦ�h��T��羅o�6B�e��L7��n�D�f�ӕ�g$�A�ׯ�{*)�t1�vNoȧ��(`�F��X��*��q����a�X1s���;|x��B��+..Y_�y��<z~��[V@?����
�=�th��(��`��+U���DdAґD8�$c�8I'<�sX�?��
�
V6�;�%.-���l�jq0�&�Д���y�f���������S�����M;�}g���}�#�\6��s��bO�m����2�OR��%'�\�5U�އ�zU��`ٖ��F��.�q�[�����2+��A���8M�L�'4�B$V�`�WF>�)A�^i
ސ�Ԕ���^A�Q�gr7K ܢx?WwN�%�D�% ,��,�H�  X Ր� �W��_��;I��	���Z�ƀ�;&��^]¡�[�n-�j,)s*��n��/��j����zvٞ�������W㮈�s̝DdM�[�;;ќTE��N���su��K��3�g�eᏗH7�ͪT׻�>�8��
�|��&υ��ku���_��>,�Dٖ��W� ��kE��J���u�����
a�V�����g"	�J G$�����	B:���	+c��yQz��"f-�ͭ�U4�O��Ekd��j'�h�Z�ݞ��my>ͭv��a�cp�tFxߊ9��QIw��Z����v��@��a����~R����@Kj+Y���}H��kTŃ��nWg��T�ՙ��N�Y�qi©����D�U)� ���E�Ԩ�P&�ߵ)��̡��	��(_T�_R���^�O���~��~�ħf���<0�r�@�V/��̑�V��@\�z9� /���h�YL�1��p�2<ǧA��{��
�[P��J �=0�p��wݱ��n,/�gL~�1���K��v^�}i��+$9�B����� ޕtӇ�3��"���0�0��}����9m�� "�T����*�N���J"�tY@̳a��J���C�b�A�W} ����SPwV�U�޵�Ä�B���)8��	�.�X����5M�%��|��/��@Ђ�����.��Ơ��Z�M����AWom�j#2}�PR�X���<Q�XD���DM͘5�Uk'��np1�e�WG�����%����D��it�4q�E�n	=�ƀ�S�0Fn
��2���0��� 9;P;3�>�^~ '����̤Dȳno���JIA2�q�[~	#4����Ƈr��#�^|��("o�6�S�~������M���Hq69V��!]X�D�y$�:��,ː�D�� #��u����fc�3�v��9U��M�R$'���i�ho5�S��;����TWZֲ�⢟U��	e�f;�)r��1�nl���/-� �mˣV�<ith<�Ƈ�r5�uM\�g�u�?{F~�4g���N�K�s��Ě�7�ڎ�\,*Ic>_����y�qz�d��mD�`j1��m*j�dblڵ�ng5�g�U�'�
G�������s$�� �ߢ��PA���U:Y���h��Չ$H�}$B��xA�%`%
^�"���]u��x�V���RC�MV���̔�>1��m��=5�,h��C���1b/�S˙L�]�[Ea�!7�m��ܚu�+��j�S{KXq��v�b�?P���D�iC������jfA�{Y�ߠkןǾ:��J�N�8UNz.8%}���|��������H<��wKsޅ�;)�_i�niɘ���ߝ?����>��ia�߉iqխ.DS�K��?�4��K3O�rG���rOWp�Ѵ��/<<<��t�-�"a�}�~�Ҕ)���_]����2�x� 0�I(��M�)^�
f�����S&�kĹމrM!3����f���=}��E]н�Om~<�w��� �ӊ�A���(�
��SH)OR!J�{,o.'@�����:X_�{�	�7�.�����4$��SQ�C�af8V�a�� u��E_>�!�M�	ނ �4��,`�@�uL��rX ��%�����	|��p�D�&�U��./>�N{f�1-�SWs�N�_]G%�˖���Tv�y+�����b&�y����KѨa����H�e�(�Q��Խn(rU���m��y��di'��r3nw嶸n�57G�m��Z��;�2���Eޚ��_��}��(��y��j�ծA��[Y�qj��1H���b_�� ���+�a	��p2d��Z�ͨ��l��=��O����:���_("0��B�s ґH$�<��"�u�i�����x9��L�b��[��9��ʑ������8OʞKOcsp�g�?yfm��d%�B4h�|"�����T=IE�+c=x��/��۞KQ��q�67���.?�o;��Nh���d����y�S��KP��l���M�2�NAH�GA?8��2���5��^ ��}��ʑ	Rk)p)��ޓf��mm���0��r��&g�2�-}�� �.�{�:�%in��Êҧ��؟���	|Q�]�~��ҀFnB�gs(��r�9M���2/uN�h�֦ӛ)f�pX���e��;�M�Ԙ=Z>��Q��I3'�zOs����8�!�����:&�����M"����r9�	�1�Ǽ�ʺ̳�(��iH����(o��|Z]�I'?��]Gլl=8'�5�qG'r����y��Q�ͺ��<K�nE��Q9]�b��Շ<J��nȵc�Ł{�,2�o�`�V��v��Iyꥼ���,�~kZҲ�XZ�D\����O�����`מ�\�|98"�2��%rW���2b}'�f��a��?�U��O=T����cV :f�G� RYj�Y��EL�2���U�����q7I��r�c�7sq��n'�9�.�U��Y�׫{���ԏ�#�zYkd����F�9�b�ۗ��~��\�[�g�(5���[��6b���w�I��ۮ2=OJ]Z�%R��7��K��n;��t��,n���Q�����pww�?3/�      �   F  x�uSKR1]K��+��|l�C�|,R���x���H����$Y��JKC(ɺ�ޯ[�Hčwp�vNZ�U]"$��T4�pk#.�z�6^�$�oP�����6��5­������` ����;�C#fx@�{�u�ʌ�L#��x����!�XTK�S�*�`.s~1�i'�5m��A��Ϡ�/,�|}Jd�r��3K��<;�z���1G��C�<��aE0�Q�l�*Bg���8G<�È]c�Ôvo�W�,%�l3��j����Ry�FX6m��OQ=����>�Sq��g�؉���e��83����K������L��8'k"�͆[���r�������L}!&�rFA�o�*	&d�i��7+tf]�%IM�:0"M�D/���ѹ��}d�/�������X��;�������$�}�B���d��<l(��=(jG�8��ˎ�u����p�6���&�S�ٽ���+�k��n ��$���U��u]-���ϸ�_�w�,q����	iM�g(��T|�YR���?�j��M���,`؅1�s)�y�T���4�\��I)� ��(�     